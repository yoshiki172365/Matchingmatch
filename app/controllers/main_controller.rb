class MainController < ApplicationController
  def index
    @apps = App.all
  end
end
