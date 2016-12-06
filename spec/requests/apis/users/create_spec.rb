require 'rails_helper'

RSpec.describe 'user creation', type: :request do
  let(:user) { FactoryGirl.create(:user) }

  it 'successfully creates an user' do
    post '/apis/users.json',
         params: { user: { email: Faker::Internet.email, username: Faker::Name.name } },
         headers: header_auth_token
    parsed_response = JSON.parse(response.body)
    expect(parsed_response['success']).to eq(true)
  end

  it 'should not creates an user' do
    post '/apis/users.json',
         params: { user: { email: user.email, username: user.username } },
         headers: header_auth_token
    parsed_response = JSON.parse(response.body)
    expect(parsed_response['success']).not_to eq(true)
  end
end
