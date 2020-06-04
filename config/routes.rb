Rails.application.routes.draw do
  devise_for :users
  root to: 'products#index'
  resources :products, only: :show
  resources :users, only: :show
end
