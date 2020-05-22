Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :users, only: [:show, :edit] do
    resources :stars, except: [:index, :show]
  end
  resources :stars, only: [:index, :show] do
  resources :reservations, only: [:show, :new, :create]
  end
end
