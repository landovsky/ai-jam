FactoryBot.define do
  factory :jam_session do
    sequence(:title) { |n| "AI Jam ##{n}" }
    held_on { 2.weeks.ago.to_date }
    content { "Jam session notes and learnings" }
    location_address { "Prague, Czech Republic" }
    published { true }
  end
end
