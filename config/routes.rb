Rails.application.routes.draw do
  get 'reviews/index'
  get 'reviews/show'
  devise_for :users
  root to: 'pages#home'
  resources :neighborhoods, only: [:index, :show]
  resources :users, only: [:index, :edit]
  resources :amenities, only: [:index]
  resources :cities, only: [:index]
  resources :reviews, only: [:index]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

