Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :apis do
    resources :users

    namespace :users do
      resources :authentication_tokens, only: [:show, :update]
    end
  end
end
