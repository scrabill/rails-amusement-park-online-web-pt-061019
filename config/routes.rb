Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :rides
  resources :attractions
  resources :sessions

  get '/users/new', to: 'users#new', as: 'root'
  get '/signin', to: 'sessions#new'
  post '/users/:id', to: 'users#update'
end
