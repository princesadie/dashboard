Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  resources :startups, only: [:index]
  resources :users
  resources :properties
  resources :companies

  root to: 'startups#index'
end
