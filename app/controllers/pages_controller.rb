class PagesController < ApplicationController
  def home
    # Load 3 published recipes for the recipe gallery preview
    @featured_recipes = Recipe.published.includes(:author, :jam_session).order(created_at: :desc).limit(3)
  end
end
