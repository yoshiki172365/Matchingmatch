class AppsController < ApplicationController

  def index
    @apps = App.all
  end

  def show
  end

  def new
    @app = App.new
    @categories = Category.where(ancestry: nil)
  end
  
end
