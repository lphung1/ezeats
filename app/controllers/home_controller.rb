class HomeController < ApplicationController
  #used to declare @foods as a variable in home controller to be used in view
  def index
    @foods = Food.all
    @drinks = Drink.all
  end
end
