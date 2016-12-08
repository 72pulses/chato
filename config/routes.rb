Rails.application.routes.draw do
  devise_for :users

  root 'dashboard#index'

  resources :users, only: [:index]
  resources :dashboard, only: [:index]

  namespace :api do
    resources :users

    namespace :users do
      resources :authentication_tokens, only: [:show, :update]
    end
  end
end
