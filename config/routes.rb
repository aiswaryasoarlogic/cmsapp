Rails.application.routes.draw do
  resources :users
  root "users#index"
  get "/", to: "users#index"
  post "/users", to: "users#create"
  post "/sessions", to: "sessions#create"
  get "/dashboard", to: "home#index"
  get "/admin", to: "home#admin"
  get "/logout", to: "sessions#destroy"
  post "/update", to: "sessions#update"
  get "/data", to: "home#data"
  get "/subpage", to: "home#subpage"
  get "/seo", to: "home#seo"
  get "/listpage", to: "home#listpage"
  get "/pagedata", to: "home#pagedata"
  post "/home", to: "home#create"
  get "/edit", to: "home#edit"
  post "/subpage", to: "home#createsubpage"

  get "password/reset", to: "password_resets#new"
  post "password/reset", to: "password_resets#create"

  get "password/reset/edit", to: "password_resets#edit"
  patch "password/reset/edit", to: "password_resets#update"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
