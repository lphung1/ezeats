class DrinksController < ApplicationController
    def drinks
    end

    def index
      @drinks = Drink.all
    end

    def new
      @drink = Drink.new
    end

    def show
      @drink = Drink.find(params[:id])
    end

    def create
      @drink = Drink.new(drink_params)
      @drink.save
      redirect_to @drink
    end

    private
    def drink_param
        params.require(:drink).permit(:name, :d_ingredients)
    end




end
