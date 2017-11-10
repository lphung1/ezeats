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


    private
    def article_param
        params.require(:drink).permit(:name, :d_ingredients)
    end




end
