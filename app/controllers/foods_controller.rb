class FoodsController < ApplicationController

    def foods
      #not even sure why this is here
    end

    #declares @foods variable to be used in html views
    def index
      @foods = Food.all

    end
    #honestly not sure what this does anymore, just put it here because it seems like we would need it
    def new
      @foods = Food.new

    end

    def show #supposed to show contents of a specific entry, currently not working
      @foods = Food.find(params[:id])
    end

    def create #supposed to create a new entry.
      @foods = Food.new(food_params)
      @foods.save
      redirect_to @foods
    end

    private #declares param requirements when creating new entry
    def food_params
        params.require(:food).permit(:name, :ingredients)
    end

end
