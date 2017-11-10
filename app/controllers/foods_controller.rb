class FoodsController < ApplicationController
    def foods
    end

    def index
      @recipes = Recipe.all
    end

    def new
      @recipe = Recipe.new
    end

    def show
      @recipe = Recipe.find(params[:id])
    end

    private
    def recipe_param
        params.require(:recipe).permit(:name, :ingredients)
    end

end
