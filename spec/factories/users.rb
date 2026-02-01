FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "user#{n}@example.com" }
    password { "password123" }
    password_confirmation { "password123" }
    bio { "A developer interested in AI." }
    interests { ["Ruby", "AI", "Databases"] }
    role { :member }

    trait :admin do
      role { :admin }
    end

    trait :topic_manager do
      role { :topic_manager }
    end

    trait :with_author do
      after(:create) do |user|
        create(:author, user: user, name: user.email.split('@').first)
      end
    end
  end
end
