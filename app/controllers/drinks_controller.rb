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

  def show
    @drink = Drink.find(params[:id])
  end

  def edit
    @drink = Drink.find(params[:id])
  end

  def update
    @drink = Drink.find(params[:id])
    @drink.name = params[:drink][:name]
    @drink.save
    redirect_to drinks_path
  end

  def destroy
    @drink = Drink.find(params[:id])
    @drink.destroy
    redirect_to drinks_path
  end
end