Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :users, only: [:show]
  resources :posts
  resources :topics
  resources :categories

  root "categories#index"
end
