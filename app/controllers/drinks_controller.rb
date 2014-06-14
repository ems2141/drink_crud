class DrinksController < ApplicationController
  def index
    @drinks = Drink.all
  end

  def new
    @drink = Drink.new
  end

  def create
    @drink = Drink.new(name: params[:drink][:name])
    @drink.save
    redirect_to drinks_path
  end
end