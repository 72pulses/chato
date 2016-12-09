require 'rails_helper'

RSpec.describe 'Update user authentication token', type: :request do
  let(:user) { FactoryGirl.create(:user) }

  it 'successfully update user authentication_token' do
    previous_token = user.authentication_token
    put "/api/users/authentication_tokens/#{user.uuid}.json",
        headers: header_auth_token
    parsed_response = JSON.parse(response.body)
    expect(parsed_response['success']).to eq(true)
    user.reload
    expect(user.authentication_token).not_to eq(previous_token)
  end
end
