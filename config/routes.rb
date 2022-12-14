Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  resources :users
  resources :companies
  resources :roles
  
  root "users#index"
  get '/search', to: "users#search"
  get '/companies', to: "companies#index"
  get '/show', to: "users#show"
  get '/roles', to: "roles#index"
end
