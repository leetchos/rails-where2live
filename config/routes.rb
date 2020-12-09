Rails.application.routes.draw do
  devise_for :users
  root to: 'cities#index'
  resources :neighborhoods, only: [:index, :show] do
    resources :reviews, only: [:index, :create]
    resources :messages, only: :create
    get 'chat', on: :member
  end
  resources :users, only: [:index, :edit]
  resources :amenities, only: [:index]
  resources :cities, only: [:index]
  get '/profile', to: 'pages#profile', as: :profile
  get '/home', to: 'pages#home', as: :home

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
