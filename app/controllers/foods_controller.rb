class FoodsController < ApplicationController
  def new
    @food = Food.new
  end

  def create
    @food = Food.find(params[:id])
    @food.save
  end

  def update
    @food = Food.find(params[:id])
    @food.update(params[:food])
  end

  def edit
    @food = Food.find(params[:id])
  end

  def destroy
    @food = Food.find(params[:id])
    @food.destroy
  end

  def index
    @foods = Food.all
  end

  def show
    @food = Food.find(params[:id])
  end

  private

  def set_food
    @food = Food.find(params[:id])
  end

  def food_params
    params.require(:food).permit(:title, :description, :ingredients, :price, :photo)
  end
end
