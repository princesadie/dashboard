Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :startups, only: [:index]
  resources :users, only: [:show]

  root to: 'startups#index'
end
