Rails.application.routes.draw do
  devise_for :users
  root to: 'products#index'
  resources :products, only: :show do
    resources :order, only: :create
  end
  resources :users, only: [:show, :edit, :update]
end
