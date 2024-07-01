Rails.application.routes.draw do
  resources :users
  get  '/sign_up', to: 'users#new'
  post '/sign_up', to: 'users#create'
  get  '/login',   to: 'sessions#new'
  post '/login',   to: 'sessions#create'
  get  '/logout',  to: 'sessions#destroy'

  # Defines the root path route ("/")
  root "sessions#new"
end
