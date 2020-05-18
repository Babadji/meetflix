Rails.application.routes.draw do
  root to: 'pages#home'
  resources :stars, only: [:index, :show]
end
