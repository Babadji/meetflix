Rails.application.routes.draw do
  root to: 'pages#home'
  resources :users, only: [:show]
  resources :stars, only: [:index, :show]
end
