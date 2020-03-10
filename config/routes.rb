Rails.application.routes.draw do
  get 'challenges/show'
  get 'tips/show'
  get 'dashboard', to: 'pages#dashboard'
  get 'contact', to: 'pages#contact'


  get 'search_users', to: 'pages#search_users'
  devise_for :users, controllers: { registrations: "registrations" }
  resources :users, only: [:index]
  post 'users/:user_id/friendships', to: 'friendships#create', as: :friendships
  resources :friendships, only: [:update]
  root to: 'pages#home'
  resources :categories, only: [:show]
  resources :challenges, only: [:show] do
    resources :daily_progresses, only: [:update]
  end
  resources :tips, only: [:show]
  get 'daily_progresses/completed'
  get 'daily_progresses/failed'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :users do
    resources :cars, only: [:new, :create]
    get "profile",  to: 'pages#profile', as: :profile
    resources :notifications, only: [:index, :destroy]
    resources :self_ratings, only: [:new, :create]
  end
end
