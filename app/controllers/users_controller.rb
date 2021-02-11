class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show]

  def show
    @user = User.find(params[:id])
    @apps = @user.apps

    favorites = Favorite.where(user_id: current_user.id).pluck(:app_id)  # ログイン中のユーザーのお気に入りのpost_idカラムを取得
    @favorite_list = App.find(favorites)     # postsテーブルから、お気に入り登録済みのレコードを取得
  end
end
