Rails.application.routes.draw do
  namespace :apis do
    resources :chat_windows, only: [:index]
    resources :users

    namespace :users do
      resources :authentication_tokens, only: [:show, :update]
    end
  end
end
