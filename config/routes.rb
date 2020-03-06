Rails.application.routes.draw do
  get 'challenges/show'
  get 'tips/show'
  get 'dashboard', to: 'pages#dashboard'
  devise_for :users, controllers: { registrations: "registrations" }
  root to: 'pages#home'
  resources :categories, only: [:show]
  resources :challenges, only: [:show]
  resources :tips, only: [:show]
  resources :daily_progresses, only: [:create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :users do
    resources :cars, only: [:new, :create]
    get "profile",  to: 'pages#profile', as: :profile
    resources :notifications, only: [:index]
    resources :self_ratings, only: [:new, :create]
  end
end
