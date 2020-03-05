Rails.application.routes.draw do
  get 'self_ratings/new'
  post 'self_ratings/create'
  get 'dashboard', to: 'pages#dashboard'
  devise_for :users
  root to: 'pages#home'
  resources :categories, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :users do
    resources :cars, only: [:new, :create]
    get "profile",  to: 'pages#profile', as: :profile
    resources :self_ratings, only: [:new, :create]
  end
end
