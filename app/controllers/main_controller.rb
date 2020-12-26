class MainController < ApplicationController
  def index
    @apps = App.all
  end

  def search
    @apps = App.search(params[:keyword])
  end
  
end
