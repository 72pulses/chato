require 'rails_helper'

RSpec.describe 'user creation', type: :request do
  it 'successfully creates an user' do
    post '/apis/users.json',
         params: { user: { email: 'test@test.com', username: 'test' } },
         headers: { 'Authorization' =>
                    "Token token=#{APP_CONFIG['external_access_token']}" }
    parsed_response = JSON.parse(response.body)
    expect(parsed_response['success']).to eq(true)
  end
end
