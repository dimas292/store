Rails.application.routes.draw do
  devise_for :users
  get "pages/index"
  root to: "pages#index"
  get "/products", to: "products#index"
  get "/products/new", to: "products#new"
  get "/product/:id", to: "products#show"
  post "/products", to: "products#create"

  resources :products
end
