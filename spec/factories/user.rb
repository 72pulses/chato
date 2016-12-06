FactoryGirl.define do
  factory :user do
    email Faker::Internet.email
    username Faker::Name.name
  end
end
