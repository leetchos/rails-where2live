Rails.application.routes.draw do
  devise_for :users
  root to: 'cities#index'
  resources :neighborhoods, only: [:index, :show] do
    resources :reviews, only: [:index, :create]
  end
  resources :users, only: [:index, :edit]
  resources :amenities, only: [:index]
  resources :cities, only: [:index]
  resources :chatrooms, only: [:show]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
