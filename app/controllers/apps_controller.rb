class AppsController < ApplicationController

  before_action :set_app, only: [:show]

  def index
    @apps = App.all
  end

  def show
  end

  def new
    @app = App.new
  end

  def create
    App.create(app_params)
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
