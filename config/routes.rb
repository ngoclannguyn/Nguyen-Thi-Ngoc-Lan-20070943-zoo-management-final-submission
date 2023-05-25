require 'sidekiq/web'

Rails.application.routes.draw do
  resources :appointments
  resources :visitors
  resources :payments
  resources :zookeepers
  resources :animal_placements
  resources :animals
  resources :categories
    authenticate :user, lambda { |u| u.admin? } do
      mount Sidekiq::Web => '/sidekiq'
    end


  devise_for :users
  root to: 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
