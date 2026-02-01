FactoryBot.define do
  factory :attendance do
    user
    jam_session
    role { 'attendee' }
  end
end
