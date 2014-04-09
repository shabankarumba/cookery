class RecipesController < ApplicationController

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build
  end

  def show
    @recipe = Recipe.find(params[:id])
  end 
  
  def create
   @recipe = Recipe.new(recipe_params)
   # @recipe.ingredients.build
    if @recipe.valid?
      @recipe.save
      redirect_to @recipe
    else
      render :new
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(:recipe_name, :author, :cooking_time, :serves, :difficulty, ingredients_attributes: [ :ingredient_name, :unit, :quantity ])
  end
end