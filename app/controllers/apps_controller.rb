class AppsController < ApplicationController

  before_action :set_app, only: [:show]

  def index
    @apps = App.limit(5).order('created_at ASC')
  end

  def show
    @comment = Comment.new
    @commentALL = @app.comments
  end

  def new
    @app = App.new
  end

  def create
    App.create(app_params)
  end

  def destroy
    @app = App.find(params[:id])
    @app.destroy
    redirect_to root_path
  end

  def search
    @apps = App.search(params[:keyword])
  end
  
  private
  def app_params
    params.require(:app)
          .permit(:name,
                  :description,
                  :pr,
                  :category_id).merge(user_id: current_user.id)
  end

  def set_app
    @app = App.find_by_id(params[:id])
  end

end
