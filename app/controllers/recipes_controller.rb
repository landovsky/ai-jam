class RecipesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update]
  before_action :set_recipe, only: [:show, :edit, :update]
  before_action :authorize_edit!, only: [:edit, :update]

  def index
    @recipes = Recipe.includes(:author, :jam_session)

    # Anonymous users see only published recipes
    @recipes = @recipes.published unless signed_in?

    # Search
    if params[:q].present?
      @recipes = @recipes.where("title LIKE ? OR content LIKE ?", "%#{params[:q]}%", "%#{params[:q]}%")
    end

    # Tag filtering - use SQL LIKE for better performance
    if params[:tag].present?
      @recipes = @recipes.where("tags LIKE ?", "%- #{params[:tag]}%")
    end

    @recipes = @recipes.order(created_at: :desc)

    # Get all available tags for filter UI
    @available_tags = Recipe.all_tags
  end

  def show
    # Anonymous users can only see published recipes
    unless @recipe.published? || signed_in?
      redirect_to recipes_path, alert: t('recipes.errors.not_published')
      return
    end
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)

    # Link recipe to current user's author (create if needed)
    if current_user.author.nil?
      author = Author.create!(name: current_user.email.split('@').first, user: current_user)
      current_user.update!(author: author)
    end

    @recipe.author = current_user.author

    # Auto-publish if user has permission
    @recipe.published = true if current_user.can_publish_recipe?

    if @recipe.save
      redirect_to @recipe, notice: t('recipes.created')
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @recipe.update(recipe_params)
      redirect_to @recipe, notice: t('recipes.updated')
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def set_recipe
    @recipe = Recipe.includes(:author, :jam_session).find(params[:id])
  end

  def authorize_edit!
    unless current_user.can_edit_recipe?(@recipe)
      redirect_to @recipe, alert: t('recipes.errors.unauthorized')
    end
  end

  def recipe_params
    permitted = [:title, :content, :image, :jam_session_id, :tags]

    # Only admins and topic managers can set published status
    permitted << :published if current_user.can_publish_recipe?

    recipe_params = params.require(:recipe).permit(permitted)

    # Convert comma-separated tags string to array
    if recipe_params[:tags].present?
      recipe_params[:tags] = recipe_params[:tags].split(',').map(&:strip).reject(&:blank?)
    else
      recipe_params[:tags] = []
    end

    recipe_params
  end
end
