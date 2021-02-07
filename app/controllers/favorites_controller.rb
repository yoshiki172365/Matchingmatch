class FavoritesController < ApplicationController
  before_action :set_app
  before_action :authenticate_user!
  
  def create
    if @app.user_id != current_user.id
      @favorite = Favorite.create(user_id: current_user.id, app_id: @app.id)
    end
  end

  def destroy
    @favorite = Favorite.find_by(user_id: current_user.id, app_id: @app.id)
    @favorite.destroy
  end

private
  def set_app
    @app = App.find(params[:app_id])
  end
end
