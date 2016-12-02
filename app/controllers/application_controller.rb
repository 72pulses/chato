#
# ApplicationController - All controllers inherits this controller
#
# @author [aby]
#
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :set_success

  private

  # set success variable to true
  def set_success
    @success = true
  end
end
