class RecipesController < ApplicationController
  before_action :find_recipe, only: [:show, :edit, :update, :destory]
  def index

  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)

    if @recipe.save
      redirect_to @recipe, notice: 'Successfully saved new recipe'
    else
      render 'new'
    end
  end

  def show
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, :description)
  end

  def find_recipe
    @recipe = Recipe.find(params[:id])
  end
end
