#
# Base Controller for APIs
#
# @author aby
#
class BaseApiController < ApplicationController
  before_action :initialize_default_instance_vars,
                :authenticate_app_from_token

  private

  # To initialize the default intance vars
  def initialize_default_instance_vars
    @success = true
  end

  # Authenticates app via authentication token
  def authenticate_app_from_token
    authenticate_token || render_unauthorized
  end

  def authenticate_token
    authenticate_with_http_token do |token, _options|
      token == ENV['EXTERNAL_ACCESS_TOKEN'] ? true : render_unauthorized
    end
  end

  def render_unauthorized
    render json: { success: false,
                   message: I18n.t('session.invalid_token') }
  end
end
