module Api
  module Users
    #
    # Controller for User Authentication related actions
    #
    # @author aby
    #
    class AuthenticationTokensController < BaseApiController
      before_action :set_user, only: [:show, :update]

      def show
        @message = if @user
                     I18n.t('user.signin')
                   else
                     @success = false
                     I18n.t('unauthorized_access')
                   end
      end

      def update
        @message = if @user
                     @user.regenerate_authentication_token
                     I18n.t('user.signout')
                   else
                     @success = false
                     I18n.t('unauthorized_access')
                   end
        render json: { success: @success, message: @message }
      end

      private

      def set_user
        @user = User.find_by(uuid: params[:id])
      end
    end
  end
end
