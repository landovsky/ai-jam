require 'rails_helper'

RSpec.describe 'Recipe Management', type: :system do
  before do
    driven_by(:selenium, using: :headless_chrome)
  end

  let!(:admin) { create(:user, email: 'admin@test.com', password: 'password', role: :admin) }
  let!(:topic_manager) { create(:user, email: 'manager@test.com', password: 'password', role: :topic_manager) }
  let!(:member) { create(:user, email: 'member@test.com', password: 'password', role: :member) }

  let!(:admin_author) { create(:author, name: 'Admin Author', user: admin) }
  let!(:member_author) { create(:author, name: 'Member Author', user: member) }

  let!(:jam_session) { create(:jam_session, title: 'AI Jam #1') }

  let!(:member_recipe) do
    create(:recipe,
      title: 'Member Recipe',
      content: 'Created by member',
      author: member_author,
      published: false
    )
  end

  let!(:admin_recipe) do
    create(:recipe,
      title: 'Admin Recipe',
      content: 'Created by admin',
      author: admin_author,
      published: true
    )
  end

  def sign_in(user)
    visit login_path
    fill_in 'Email', with: user.email
    fill_in 'Password', with: 'password'
    click_button 'Log In'
  end

  describe 'authenticated member' do
    before { sign_in(member) }

    it 'can create a new recipe as draft' do
      visit recipes_path

      click_link 'Share Your Recipe'

      expect(page).to have_content('Share Your Recipe')

      fill_in 'Recipe Title', with: 'New Member Recipe'
      fill_in 'Recipe Content', with: 'This is my workflow for automating tasks'
      fill_in 'Recipe Icon (Emoji)', with: '🚀'
      fill_in 'Tags', with: 'Automation, Workflow'
      select 'AI Jam #1', from: 'Jam Session (Optional)'

      click_button 'Save Recipe'

      expect(page).to have_content('Recipe created successfully')
      expect(page).to have_content('New Member Recipe')
      expect(page).to have_content('Draft') # Members create drafts by default

      # Verify database
      recipe = Recipe.last
      expect(recipe.title).to eq('New Member Recipe')
      expect(recipe.published).to be false
      expect(recipe.author).to eq(member_author)
      expect(recipe.tags).to eq(['Automation', 'Workflow'])
    end

    it 'can edit their own recipe' do
      visit recipe_path(member_recipe)

      click_link 'Edit Recipe'

      fill_in 'Recipe Title', with: 'Updated Member Recipe'
      click_button 'Save Recipe'

      expect(page).to have_content('Recipe updated successfully')
      expect(page).to have_content('Updated Member Recipe')

      member_recipe.reload
      expect(member_recipe.title).to eq('Updated Member Recipe')
    end

    it 'cannot edit recipes from other users' do
      visit recipe_path(admin_recipe)

      expect(page).not_to have_link('Edit Recipe')
    end

    it 'cannot publish their own recipes' do
      visit edit_recipe_path(member_recipe)

      expect(page).not_to have_field('Publish this recipe')
    end

    it 'can see their own draft recipes in the list' do
      visit recipes_path

      expect(page).to have_content('Member Recipe')
      expect(page).to have_content('Draft')
    end
  end

  describe 'topic manager' do
    before { sign_in(topic_manager) }

    it 'can create and publish recipes directly' do
      visit recipes_path

      click_link 'Share Your Recipe'

      fill_in 'Recipe Title', with: 'Topic Manager Recipe'
      fill_in 'Recipe Content', with: 'This is a workflow'
      fill_in 'Recipe Icon (Emoji)', with: '📝'
      fill_in 'Tags', with: 'AI, Tools'
      check 'Publish this recipe'

      click_button 'Save Recipe'

      expect(page).to have_content('Recipe created successfully')
      expect(page).to have_content('Topic Manager Recipe')
      expect(page).not_to have_content('Draft')

      # Verify it's published
      recipe = Recipe.last
      expect(recipe.published).to be true
    end

    it 'can edit any recipe' do
      visit recipe_path(member_recipe)

      click_link 'Edit Recipe'

      fill_in 'Recipe Title', with: 'Edited by Topic Manager'
      check 'Publish this recipe'
      click_button 'Save Recipe'

      expect(page).to have_content('Recipe updated successfully')

      member_recipe.reload
      expect(member_recipe.title).to eq('Edited by Topic Manager')
      expect(member_recipe.published).to be true
    end

    it 'can unpublish recipes' do
      visit edit_recipe_path(admin_recipe)

      uncheck 'Publish this recipe'
      click_button 'Save Recipe'

      admin_recipe.reload
      expect(admin_recipe.published).to be false
    end
  end

  describe 'admin' do
    before { sign_in(admin) }

    it 'can create published recipes' do
      visit new_recipe_path

      fill_in 'Recipe Title', with: 'Admin Recipe'
      fill_in 'Recipe Content', with: 'Important recipe'
      fill_in 'Recipe Icon (Emoji)', with: '👑'
      fill_in 'Tags', with: 'Admin'
      check 'Publish this recipe'

      click_button 'Save Recipe'

      recipe = Recipe.last
      expect(recipe.published).to be true
    end

    it 'can edit any recipe' do
      visit recipe_path(member_recipe)

      click_link 'Edit Recipe'

      fill_in 'Recipe Content', with: 'Modified by admin'
      click_button 'Save Recipe'

      expect(page).to have_content('Recipe updated successfully')

      member_recipe.reload
      expect(member_recipe.content).to eq('Modified by admin')
    end
  end

  describe 'form validation' do
    before { sign_in(member) }

    it 'requires title and content' do
      visit new_recipe_path

      click_button 'Save Recipe'

      expect(page).to have_content('error')
      expect(Recipe.count).to eq(2) # No new recipe created
    end

    it 'handles tags as comma-separated values' do
      visit new_recipe_path

      fill_in 'Recipe Title', with: 'Tag Test'
      fill_in 'Recipe Content', with: 'Testing tags'
      fill_in 'Tags', with: 'Tag1, Tag2, Tag3'

      click_button 'Save Recipe'

      recipe = Recipe.last
      expect(recipe.tags).to eq(['Tag1', 'Tag2', 'Tag3'])
    end

    it 'creates author automatically if user does not have one' do
      new_member = create(:user, email: 'newmember@test.com', password: 'password', role: :member)
      sign_in(new_member)

      expect(new_member.author).to be_nil

      visit new_recipe_path

      fill_in 'Recipe Title', with: 'First Recipe'
      fill_in 'Recipe Content', with: 'Content'
      click_button 'Save Recipe'

      expect(page).to have_content('Recipe created successfully')

      new_member.reload
      expect(new_member.author).to be_present
      expect(Recipe.last.author).to eq(new_member.author)
    end
  end

  describe 'authorization edge cases' do
    it 'redirects to onboarding if not signed in' do
      visit new_recipe_path

      expect(page).to have_current_path(step1_onboarding_index_path(locale: :en))
    end

    it 'prevents unauthorized editing via direct URL access' do
      sign_in(member)

      visit edit_recipe_path(admin_recipe)

      expect(page).to have_current_path(recipe_path(admin_recipe, locale: :en))
      expect(page).to have_content('You are not authorized')
    end
  end

  describe 'cancel functionality' do
    before { sign_in(member) }

    it 'allows canceling new recipe creation' do
      visit new_recipe_path

      click_link 'Cancel'

      expect(page).to have_current_path(recipes_path(locale: :en))
    end

    it 'allows canceling recipe edit' do
      visit edit_recipe_path(member_recipe)

      click_link 'Cancel'

      expect(page).to have_current_path(recipe_path(member_recipe, locale: :en))
    end
  end
end
