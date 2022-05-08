FactoryBot.define do
    factory :mee do
        q_1 {Faker::Lorem.sentence}
        association :user 
    end
  end