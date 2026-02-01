FactoryBot.define do
  factory :author do
    sequence(:name) { |n| "Author #{n}" }

    trait :with_user do
      association :user
    end
  end
end
