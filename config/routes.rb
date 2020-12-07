Rails.application.routes.draw do
  devise_for :users
  root to: 'cities#index'
  resources :neighborhoods, only: [:index, :show] do
    resources :reviews, only: [:index, :create]
    get '/chatroom', to: 'chatrooms#messages'
      end
  resources :users, only: [:index, :edit]
  resources :amenities, only: [:index]
  resources :cities, only: [:index]
  get '/profile', to: 'pages#profile', as: :profile

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
