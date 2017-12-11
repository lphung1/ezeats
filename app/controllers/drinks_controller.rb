class DrinksController < ApplicationController
  #not updated but similar function to drinks
  def drinks
    #not even sure why this is here
    #@drinks = Drink.all
  end

  #declares @drinks variables to be used in html views
  def index
    @drinks = Drink.all
    if params[:search] #when using :search parameter, call the following search function.
      @drinks = Drink.search(params[:search]).order("created_at DESC")
    else
      @drinks = Drink.all.order("created_at DESC")
    end

  end

  #Creates new Drink record just put it here because it seems like we would need it
  def new
    @drinks = Drink.new

  end

  def show #supposed to show contents of a specific entry, currently not working
    @drinks = Drink.search(params[:search])
  end

  def create #Creates a new entry and saves it to the drinks model and redirects to home/index
    @drinks = Drink.new(drinks_params)
    @drinks.save
    redirect_to controller: "home", action: "index"
  end

  private #declares param requirements when creating new entry
  def drinks_params
      params.require(:drink).permit(:name, :d_ingredients, :d_instructions)
  end




end
