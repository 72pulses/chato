Rails.application.routes.draw do
  namespace :api do
    resources :chat_windows, only: [:index]
  end
end
