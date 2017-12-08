class FoodsController < ApplicationController

    def foods
      #not even sure why this is here
      #@foods = Food.all
    end

    #declares @foods variables to be used in html views
    def index
      @foods = Food.all
      if params[:search] #when using :search parameter, call the following search function.
        @foods = Food.search(params[:search]).order("created_at DESC")
      else
        @foods = Food.all.order("created_at DESC")
      end

    end

    #Creates new Food record just put it here because it seems like we would need it
    def new
      @foods = Food.new

    end

    def show #supposed to show contents of a specific entry, currently not working
      @foods = Food.search(params[:search])
    end

    def create #Creates a new entry and saves it to the foods model and redirects to home/index
      @foods = Food.new(food_params)
      @foods.save
      redirect_to controller: "home", action: "index"
    end

    private #declares param requirements when creating new entry
    def food_params
        params.require(:food).permit(:name, :ingredients)
    end

end
