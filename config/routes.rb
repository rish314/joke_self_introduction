Rails.application.routes.draw do
  resources :user_profiles
  devise_for :operators
  root to: 'modifiers#index'

  resources :levels
  resources :jobs
  resources :modifiers

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
