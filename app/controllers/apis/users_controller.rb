module Apis
  #
  # Controller for User related actions
  #
  # @author aby
  #
  class UsersController < BaseApiController
    def create
      @user = User.new(user_params)
      @user.add_role :chat_user
      @message = if @user.save
                   I18n.t('user.created')
                 else
                   @success = false
                   @user.errors.full_messages.join(',')
                 end
    end

    private

    def user_params
      params.require(:user).permit(:email, :username)
    end
  end
end
