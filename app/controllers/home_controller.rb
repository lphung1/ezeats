class HomeController < ApplicationController
  def index
    @foods = Food.all
  end
end
