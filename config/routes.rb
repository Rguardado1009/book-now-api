Rails.application.routes.draw do
  get "/me", to: "users#current"
  post "/signup", to: "users#create"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  resources :users
  resources :appointments
  resources :reviews
  resources :services
  resources :employees
end
