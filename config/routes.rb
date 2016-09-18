Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  resources :startups, only: [:index]
  resources :users
  resources :units
  resources :properties do
    resources :units, only: [:create, :new, :index, :edit, :update]
  end
  resources :companies

  root to: 'startups#index'
end
