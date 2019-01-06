FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "email#{n}@example.com" }

    first_name { "John" }
    last_name { "Elliot" }
    password { "AAAAaaaa1111####" }
  end

  factory :reflection do
    user

    factory :reflection_with_questions do
      transient do
        questions_count { 2 }
      end

      after(:create) do |reflection, evaluator|
        create_list(
          :question,
          evaluator.questions_count,
          reflection: reflection,
        )
      end
    end
  end

  factory :question do
    sequence(:text) { |n| "Question #{n}" }
    field_type { "short_answer" }
    association :reflection, strategy: :build
  end
end
