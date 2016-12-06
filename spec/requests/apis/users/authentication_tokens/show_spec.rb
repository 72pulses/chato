require 'rails_helper'

RSpec.describe 'user authentication', type: :request do
  let(:user) { FactoryGirl.create(:user) }

  it 'successfully show user access token' do
    get "/apis/users/authentication_tokens/#{user.uuid}.json",
        headers: { 'Authorization' =>
                   "Token token=#{ENV['EXTERNAL_ACCESS_TOKEN']}" }
    parsed_response = JSON.parse(response.body)
    expect(parsed_response['success']).to eq(true)
  end

  it 'shouldnot authorize user' do
    get "/apis/users/authentication_tokens/#{user.id}1.json",
        headers: { 'Authorization' =>
                   "Token token=#{ENV['EXTERNAL_ACCESS_TOKEN']}" }
    parsed_response = JSON.parse(response.body)
    expect(parsed_response['success']).to eq(false)
  end
end
