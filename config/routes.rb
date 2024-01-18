Rails.application.routes.draw do
  # get 'sessions/new'
  # get 'sessions/create'
  # get 'sessions/destroy'
  get 'users/new'
  get 'users/create'
  
  
  get "/articles", to: "articles#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "users#index"
  get "/users", to: "users#index"
  get "/users/:id", to: "users#show"
  resources :users, only: [:new, :create]
  get '/signup', to: 'users#new', as: 'signup'
 
  resources :sessions, only: [:new, :create, :destroy]
  get '/login', to: 'sessions#new', as: 'login'
  delete '/logout', to: 'sessions#destroy', as: 'logout'
end
