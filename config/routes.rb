Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :users do
    resources :cars, only: [:new, :create]
    get "profile",  to: 'pages#profile', as: :profile
  end
end
