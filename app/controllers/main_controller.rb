class MainController < ApplicationController
  def index
    @apps = App.limit(5).order('created_at DESC')
  end

  def search
    @apps = App.search(params[:keyword])
  end
  
end
