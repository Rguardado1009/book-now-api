Rails.application.routes.draw do
  resources :appointments
  resources :reviews
  resources :services
  resources :employees
  get "/me", to: "users#current"
  post "/signup", to: "users#create"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  resources :users, only: [:index, :show, :create, :update, :destroy]
end
