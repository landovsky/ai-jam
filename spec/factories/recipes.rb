FactoryBot.define do
  factory :recipe do
    sequence(:title) { |n| "Recipe #{n}" }
    content { "This is the recipe content describing the workflow and outcome." }
    image { "📝" }
    tags { ["AI", "Automation"] }
    published { false }

    trait :published do
      published { true }
    end

    trait :with_author do
      association :author
    end

    trait :with_jam_session do
      association :jam_session
    end
  end
end
