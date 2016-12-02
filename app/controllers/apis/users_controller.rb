module Apis
  #
  # Controller for User related actions
  #
  # @author [aby]
  #
  class UsersController < Apis::BaseApiController
    def create
      @user = User.create(user_params)
      @message = if @user.errors.any?
                   @success = false
                   @user.errors.full_messages.join(',')
                 else
                   @message = I18n.t('user.created')
                 end
    end

    private

    def user_params
      params.require(:user).permit(:email, :username)
    end
  end
end
