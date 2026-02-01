require 'rails_helper'

RSpec.describe 'Recipe Browsing', type: :system do
  before do
    driven_by(:selenium, using: :headless_chrome)
  end

  let!(:author) { create(:author, name: 'Tomáš') }
  let!(:jam_session) { create(:jam_session, title: 'AI Jam #1') }

  let!(:published_recipe1) do
    create(:recipe,
      title: 'Database Schema from Natural Language',
      content: 'How to generate SQL schemas with Claude',
      image: '🗄️',
      tags: ['Database', 'Claude', 'SQL'],
      author: author,
      jam_session: jam_session,
      published: true
    )
  end

  let!(:published_recipe2) do
    create(:recipe,
      title: 'Automating Weekly Standup Reports',
      content: 'Using ChatGPT to automate standup reports',
      image: '⚙️',
      tags: ['Automation', 'Workflow', 'ChatGPT'],
      author: author,
      published: true
    )
  end

  let!(:draft_recipe) do
    create(:recipe,
      title: 'Work in Progress',
      content: 'Not yet published',
      published: false
    )
  end

  describe 'homepage recipe gallery' do
    it 'displays published recipes with clickable cards' do
      visit root_path

      # Check that published recipes are visible
      expect(page).to have_content('Database Schema from Natural Language')
      expect(page).to have_content('Automating Weekly Standup Reports')

      # Check that draft recipes are not visible
      expect(page).not_to have_content('Work in Progress')

      # Check "View all recipes" link is present
      expect(page).to have_link(href: /recipes/)

      # Click on a recipe card
      click_on 'Database Schema from Natural Language'

      # Should navigate to recipe detail page
      expect(page).to have_current_path(recipe_path(id: published_recipe1.id, locale: :en))
      expect(page).to have_content('How to generate SQL schemas with Claude')
    end
  end

  describe 'recipe index page' do
    it 'lists all published recipes' do
      visit recipes_path

      expect(page).to have_content('The Living Recipe Book')
      expect(page).to have_content('Database Schema from Natural Language')
      expect(page).to have_content('Automating Weekly Standup Reports')
      expect(page).not_to have_content('Work in Progress')
    end

    it 'allows searching by text' do
      visit recipes_path

      fill_in 'q', with: 'Weekly'
      click_button 'Search'

      expect(page).to have_content('Automating Weekly Standup Reports')
      expect(page).not_to have_content('Database Schema from Natural Language')

      # Active filter should be displayed
      expect(page).to have_content(/active filters/i)
      expect(page).to have_content('Search: "Weekly"')
    end

    it 'allows filtering by tag' do
      visit recipes_path

      # Click on a tag
      click_link '#Database'

      expect(page).to have_content('Database Schema from Natural Language')
      expect(page).not_to have_content('Automating Weekly Standup Reports')

      # Active filter should be displayed
      expect(page).to have_content(/active filters/i)
      expect(page).to have_content('#Database')
    end

    it 'allows combining search and tag filters' do
      create(:recipe,
        title: 'Database Optimization with AI',
        content: 'Optimizing databases using AI tools',
        tags: ['Database', 'AI'],
        published: true
      )

      visit recipes_path

      fill_in 'q', with: 'Optimization'
      click_button 'Search'

      click_link '#Database'

      expect(page).to have_content('Database Optimization with AI')
      expect(page).not_to have_content('Database Schema from Natural Language')
    end

    it 'shows empty state when no results found' do
      visit recipes_path

      fill_in 'q', with: 'nonexistent'
      click_button 'Search'

      expect(page).to have_content('No recipes found')
      expect(page).to have_content('Try adjusting your search or filters')
      expect(page).to have_link('Clear Filters')
    end

    it 'allows clearing all filters' do
      visit recipes_path(q: 'Weekly', tag: 'Automation')

      expect(page).to have_content(/active filters/i)

      click_link 'Clear all'

      expect(page).to have_current_path(recipes_path(locale: :en))
      expect(page).not_to have_content(/active filters/i)
    end
  end

  describe 'recipe show page' do
    it 'displays full recipe details' do
      visit recipe_path(id: published_recipe1.id)

      expect(page).to have_content('Database Schema from Natural Language')
      expect(page).to have_content('How to generate SQL schemas with Claude')
      expect(page).to have_content('By: Tomáš')
      expect(page).to have_content('Session: AI Jam #1')
      expect(page).to have_content('#Database')
      expect(page).to have_content('#Claude')
      expect(page).to have_content('#SQL')
      expect(page).to have_content('🗄️')
    end

    it 'handles recipes without optional fields gracefully' do
      recipe_without_metadata = create(:recipe,
        title: 'Simple Recipe',
        content: 'Content here',
        author: nil,
        jam_session: nil,
        tags: [],
        published: true
      )

      visit recipe_path(id: recipe_without_metadata.id)

      expect(page).to have_content('Simple Recipe')
      expect(page).to have_content('Anonymous') # Default author
      expect(page).not_to have_content('Session:')
    end

    it 'allows navigation back to recipes' do
      visit recipe_path(id: published_recipe1.id)

      click_link 'Back to Recipes'

      expect(page).to have_current_path(recipes_path(locale: :en))
    end

    it 'clicking on tag filters recipes by that tag' do
      visit recipe_path(id: published_recipe1.id)

      click_link '#Database'

      expect(page).to have_current_path(recipes_path(tag: 'Database', locale: :en))
      expect(page).to have_content(/active filters/i)
    end
  end

  describe 'locale switching' do
    it 'switches to Czech locale and preserves it across navigation' do
      visit recipes_path

      click_link 'CS'

      expect(page).to have_content('Živá Kniha Receptů')

      # Navigate to recipe show
      click_on 'Database Schema from Natural Language'

      # Locale should be preserved
      expect(page).to have_current_path(recipe_path(id: published_recipe1.id, locale: :cs))
      expect(page).to have_content('Zpět na Recepty')

      # Navigate back
      click_link 'Zpět na Recepty'

      # Still in Czech
      expect(page).to have_current_path(recipes_path(locale: :cs))
      expect(page).to have_content('Živá Kniha Receptů')
    end

    it 'preserves search parameters when switching locale' do
      visit recipes_path(q: 'Weekly', tag: 'Automation')

      click_link 'CS'

      expect(page).to have_current_path(recipes_path(q: 'Weekly', tag: 'Automation', locale: :cs))
      expect(page).to have_content(/aktivní filtry/i)
    end
  end

  describe 'anonymous user restrictions' do
    it 'does not show draft recipes to anonymous users' do
      visit recipes_path

      expect(page).not_to have_content('Work in Progress')
    end

    it 'redirects anonymous users trying to access draft recipe' do
      visit recipe_path(id: draft_recipe.id)

      expect(page).to have_current_path(recipes_path(locale: :en))
      expect(page).to have_content('This recipe is not published yet')
    end

    it 'does not show create recipe button to anonymous users' do
      visit recipes_path

      expect(page).not_to have_link('Share Your Recipe')
    end
  end
end
