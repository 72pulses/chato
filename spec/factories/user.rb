FactoryGirl.define do
  factory :user do
    email Faker::Internet.email
    username Faker::Name.name
    password Devise.friendly_token(8)
  end
end
