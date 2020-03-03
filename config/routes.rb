Rails.application.routes.draw do
  get 'self_ratings/new'
  get 'self_ratings/create'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
