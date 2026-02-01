require 'rails_helper'

RSpec.describe 'Profile Privacy', type: :system do
  let(:user_a) { create(:user, email: 'alice@example.com', password: 'password123', bio: 'Alice bio', interests: ['Ruby', 'AI'].to_json) }
  let(:user_b) { create(:user, email: 'bob@example.com', password: 'password123', bio: 'Bob bio', interests: ['Python', 'ML'].to_json) }
  let!(:jam_session) { create(:jam_session, title: 'AI Jam', held_on: 1.week.from_now.to_date) }

  before do
    driven_by(:rack_test)
  end

  scenario 'User A views User B profile before and after sharing event' do
    # User A signs in
    visit step1_onboarding_index_path
    fill_in 'Email', with: user_a.email
    fill_in 'Password', with: 'password123'
    click_button 'Continue'

    # User B RSVPs to event (setup)
    create(:attendance, user: user_b, jam_session: jam_session)

    # User A views User B's profile - should be locked
    visit profile_path(user_b)
    expect(page).to have_content('Private')
    expect(page).not_to have_content('Bob bio')
    expect(page).not_to have_content('Python')

    # User A RSVPs to same event
    visit jam_session_path(jam_session)
    click_button 'RSVP'

    # User A views User B's profile again - should be unlocked
    visit profile_path(user_b)
    expect(page).to have_content('bob@example.com')
    expect(page).to have_content('Bob bio')
    expect(page).to have_content('Python')
    expect(page).to have_content('ML')
    expect(page).to have_content('AI Jam') # Shared event
  end

  scenario 'Guest user views profile and sees locked state' do
    visit profile_path(user_a)
    expect(page).to have_content('Private')
    expect(page).not_to have_content('Alice bio')
    expect(page).to have_link('Sign Up')
  end

  scenario 'User views own profile and sees all information' do
    visit step1_onboarding_index_path
    fill_in 'Email', with: user_a.email
    fill_in 'Password', with: 'password123'
    click_button 'Continue'

    visit profile_path(user_a)
    expect(page).to have_content('alice@example.com')
    expect(page).to have_content('Alice bio')
    expect(page).to have_content('Ruby')
    expect(page).to have_content('AI')
    expect(page).to have_content('Your Profile')
  end

  scenario 'User cancels RSVP and profile becomes locked again' do
    # Both users RSVP
    attendance_a = create(:attendance, user: user_a, jam_session: jam_session)
    create(:attendance, user: user_b, jam_session: jam_session)

    # User B signs in and views User A's unlocked profile
    visit step1_onboarding_index_path
    fill_in 'Email', with: user_b.email
    fill_in 'Password', with: 'password123'
    click_button 'Continue'

    visit profile_path(user_a)
    expect(page).to have_content('Alice bio')

    # User A cancels RSVP
    attendance_a.destroy

    # User B refreshes and profile should be locked
    visit profile_path(user_a)
    expect(page).to have_content('Private')
    expect(page).not_to have_content('Alice bio')
  end
end
