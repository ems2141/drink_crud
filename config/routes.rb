Rails.application.routes.draw do
  resources :drinks
  root 'users#index'

  resources :users

  resource :sessions, only: [:create]
end
