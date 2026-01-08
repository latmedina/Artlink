FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "user#{n}@mail.com" }
    sequence(:username) { |n| "user#{n}" }
    password { "Password1!" }
  end
end
