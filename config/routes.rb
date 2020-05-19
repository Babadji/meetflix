Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :users, only: [:show]
  resources :stars, only: [:index, :show]
  resources :reservations, only: [:show, :new, :create]
end
