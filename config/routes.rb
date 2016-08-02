Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]
  resources :topics
  resources :posts
  resources :categories


  root "categories#index"
end
