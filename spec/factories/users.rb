FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "user#{n}@example.com" }
    password { "password123" }
    password_confirmation { "password123" }
    bio { "A developer interested in AI." }
    interests { ["Ruby", "AI", "Databases"] }
  end
end
