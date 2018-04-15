class CocktailsController < ApplicationController
  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.find(params[:id])
    @cocktail.save
  end

  def update
    @cocktail = Cocktail.find(params[:id])
    @cocktail.update(params[:cocktail])
  end

  def edit
    @cocktail = Cocktail.find(params[:id])
  end

  def destroy
    @cocktail = Cocktail.find(params[:id])
    @cocktail.destroy
  end

  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:title, :description, :ingredients, :price, :photo)
  end
end
