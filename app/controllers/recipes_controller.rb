class RecipesController < ApplicationController
  def index
    @recipes = Recipe.includes(:author, :jam_session)
    @recipes = @recipes.where("title LIKE ? OR content LIKE ?", "%#{params[:q]}%", "%#{params[:q]}%") if params[:q].present?
    @recipes = filter_by_tag(@recipes, params[:tag]) if params[:tag].present?
    @recipes = @recipes.order(created_at: :desc)
  end

  def show
    @recipe = Recipe.includes(:author, :jam_session).find(params[:id])
  end

  private

  def filter_by_tag(recipes, tag)
    recipes.select { |r| r.tags&.include?(tag) }
  end
end
