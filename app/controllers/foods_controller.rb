class FoodsController < ApplicationController

    def foods
    end

    def index
      @foods = Food.all
    end

    def new
      @food = Food.new
    end

    def show
      @food = Food.find(params[:id])
    end

    def create
      @foods = Food.new(food_params)
      @foods.save
      redirect_to @foods
    end

    private
    def food_params
        params.require(:food).permit(:name, :ingredients)
    end

end
