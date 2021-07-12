Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :neighborhoods
    resources :appointments
      resources :animals
end
