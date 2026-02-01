require 'rails_helper'

RSpec.describe 'Recipe Management (Simplified)', type: :system do
  before do
    driven_by(:selenium, using: :headless_chrome)
  end

  # Create users with interests (required by onboarding)
  let!(:admin) { create(:user, email: 'admin@test.com', password: 'password123', role: :admin, interests: ['AI', 'Tools']) }
  let!(:member) { create(:user, email: 'member@test.com', password: 'password123', role: :member, interests: ['Ruby', 'AI']) }
  let!(:admin_author) { create(:author, name: 'Admin Author', user: admin) }

  def sign_in(user)
    Capybara.reset_sessions!
    visit login_path
    fill_in 'Email', with: user.email
    fill_in 'Password', with: 'password123'
    click_button 'Sign In'
    expect(page).to have_content('Signed in successfully')
  end

  describe 'creating recipes' do
    it 'allows authenticated users to create recipes by directly visiting new recipe page' do
      sign_in(member)

      # Direct navigation to new recipe page
      visit new_recipe_path

      expect(page).to have_content('Share Your Recipe')

      fill_in 'Recipe Title', with: 'Test Recipe'
      fill_in 'Recipe Content', with: 'This is my test workflow'
      fill_in 'Recipe Icon (Emoji)', with: '🚀'
      fill_in 'Tags', with: 'Testing, Ruby'
      click_button 'Save Recipe'

      expect(page).to have_content('Recipe created successfully')
      expect(page).to have_content('Test Recipe')

      recipe = Recipe.last
      expect(recipe.title).to eq('Test Recipe')
      expect(recipe.tags).to eq(['Testing', 'Ruby'])
    end

    it 'shows validation errors for invalid recipes' do
      sign_in(member)
      visit new_recipe_path

      click_button 'Save Recipe'

      expect(page).to have_content(/error/i)
      expect(page).to have_content("Title can't be blank")
    end
  end

  describe 'authorization' do
    it 'shows create button only to authenticated users' do
      visit recipes_path
      expect(page).not_to have_link('Share Your Recipe')

      sign_in(member)
      visit recipes_path
      expect(page).to have_link('Share Your Recipe')
    end

    it 'redirects to onboarding when accessing new recipe without authentication' do
      visit new_recipe_path
      expect(page).to have_current_path(step1_onboarding_index_path(locale: :en))
    end
  end
end
