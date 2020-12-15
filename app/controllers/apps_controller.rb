class AppsController < ApplicationController

  before_action :set_app, only: [:show]

  def index
    @apps = App.all
  end

  def show
  end

  def new
    @app = App.new
    @category_parent_array = ["---"]
    Category.where(ancestry: nil).each do |parent|
       @category_parent_array << parent.name
    end
  end

  def create
    App.create(app_params)
  end
  
  def get_category_children
    @category_children = Category.find_by(name: "#{params[:parent_name]}", ancestry: nil).children
  end
  
  def get_category_grandchildren
    @category_grandchildren = Category.find("#{params[:child_id]}").children
  end

  private
  def app_params
    params.require(:app)
          .permit(:name,
                  :description,
                  :category_id,
                  :user)
  end

  def set_app
    @app = App.find_by_id(params[:id])
  end

end
