FactoryBot.define do
  factory :jam_session do
    sequence(:title) { |n| "AI Jam Session #{n}" }
    held_on { 2.weeks.from_now.to_date }
    location_address { "Prague, Czech Republic" }
    published { true }
    content { "Join us for hands-on AI exploration!" }
  end
end
