Rails.application.routes.draw do
  resources :profiles
  devise_for :operators

  root to: 'user_profile#index'
  get '/user_profile', to: 'user_profile#show'

  resources :levels
  resources :jobs
  resources :modifiers

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
