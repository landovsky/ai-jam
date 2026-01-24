require 'rails_helper'

RSpec.describe 'Onboarding Flow', type: :system do
  before do
    driven_by(:selenium, using: :headless_chrome)
  end

  it 'allows a user to sign up through the progressive onboarding flow' do
    visit root_path

    # Homepage to Step 1
    click_link 'Start Onboarding'
    expect(page).to have_content('Step 1: Your Interests')

    # Step 1
    fill_in 'Interests / Tools', with: 'Ruby on Rails, AI Agents'
    click_button 'Next Step'

    # Step 2
    expect(page).to have_content('Step 2: Create Account')
    fill_in 'Email Address', with: 'test@example.com'
    fill_in 'Password', with: 'password123'
    fill_in 'Confirm Password', with: 'password123'
    click_button 'Create Account'

    # Step 3
    expect(page).to have_content('Step 3: Introduce Yourself')
    fill_in 'Bio', with: 'I am a software engineer building AI tools.'
    click_button 'Complete Profile'

    # Final Redirection
    expect(page).to have_current_path(root_path(locale: :en))
    expect(page).to have_content('Welcome to AI Jam!')

    # Database Verification
    user = User.last
    expect(user.email).to eq('test@example.com')
    expect(user.interests).to eq('Ruby on Rails, AI Agents')
    expect(user.bio).to eq('I am a software engineer building AI tools.')
  end
end
