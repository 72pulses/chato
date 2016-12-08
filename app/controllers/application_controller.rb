#
# ApplicationController - All controllers inherits this controller
#
# @author aby
#
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
end
