#
# Module to stub header
#
# @author aby
#
module StubHeader
  def header_auth_token
    { 'Authorization' =>
      "Token token=#{ENV['EXTERNAL_ACCESS_TOKEN']}" }
  end
end

RSpec.configure do |config|
  config.include StubHeader, type: :request
end
