require 'sidekiq/web'

Rails.application.routes.draw do
  resources :orders
  resources :customers
  resources :products
  resources :suppliers
  resources :employees
  resources :payments
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
    authenticate :user, lambda { |u| u.admin? } do
      mount Sidekiq::Web => '/sidekiq'
    end


  devise_for :users
  root to: 'customers#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
