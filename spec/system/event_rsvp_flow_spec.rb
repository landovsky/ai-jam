require 'rails_helper'

RSpec.describe 'Event RSVP Flow', type: :system do
  let(:user) { create(:user, email: 'alice@example.com', password: 'password123', bio: 'Alice bio', interests: ['Ruby', 'AI'].to_json) }
  let!(:jam_session) { create(:jam_session, title: 'AI Jam #42', held_on: 1.week.from_now.to_date, location_address: 'Prague') }

  before do
    driven_by(:rack_test)
  end

  scenario 'User browses events, RSVPs, and sees attendee list' do
    # Sign in
    visit login_path
    fill_in 'Email Address', with: user.email
    fill_in 'Password', with: 'password123'
    click_button 'Sign In'

    # Browse events
    visit jam_sessions_path
    expect(page).to have_content('AI Jam #42')
    expect(page).to have_content('Prague')

    # View event details
    click_link 'AI Jam #42'
    expect(page).to have_content('AI Jam #42')
    expect(page).to have_button('RSVP')

    # RSVP to event
    click_button 'RSVP'
    expect(page).to have_content('successfully RSVP')
    expect(page).to have_button('Cancel RSVP')
    expect(page).to have_content('1 Attendee')

    # Verify attendance
    visit jam_sessions_path
    expect(page).to have_content("You're attending!")

    # Cancel RSVP
    visit jam_session_path(jam_session)
    click_button 'Cancel RSVP'
    expect(page).to have_content('cancelled')
    expect(page).to have_button('RSVP')
  end

  scenario 'Two users RSVP to same event and unlock each other\'s profiles' do
    # Create second user
    user2 = create(:user, email: 'bob@example.com', password: 'password123', bio: 'Bob bio', interests: ['Python', 'ML'].to_json)

    # User 1 RSVPs
    visit login_path
    fill_in 'Email Address', with: user.email
    fill_in 'Password', with: 'password123'
    click_button 'Sign In'
    visit jam_session_path(id: jam_session.id)
    click_button 'RSVP'

    # User 2 RSVPs
    click_button 'Logout' if page.has_button?('Logout')
    visit login_path
    fill_in 'Email Address', with: user2.email
    fill_in 'Password', with: 'password123'
    click_button 'Sign In'
    visit jam_session_path(id: jam_session.id)
    click_button 'RSVP'

    # User 2 views event attendees
    expect(page).to have_content('2 Attendees')
    expect(page).to have_content('alice@example.com')
    expect(page).to have_content('Alice bio')
    expect(page).to have_content('Ruby')
    expect(page).to have_content('AI')

    # User 2 views User 1's profile
    click_link 'View Profile', match: :first
    expect(page).to have_content('alice@example.com')
    expect(page).to have_content('Alice bio')
    expect(page).to have_content('Ruby')
    expect(page).to have_content('AI')
  end
end
