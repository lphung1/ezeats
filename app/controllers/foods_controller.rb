class FoodsController < ApplicationController

    def food
        @food = self
    end

    def index
      @food = Food.all
    end

    def new
      @food = Food.new
    end

    def show
      @food = Food.find(params[:id])
    end

    def create
      @food = Food.new(food_params)
      @food.save
      redirect_to @food
    end

    private
    def food_params
        params.require(:food).permit(:name, :ingredients)
    end

end
