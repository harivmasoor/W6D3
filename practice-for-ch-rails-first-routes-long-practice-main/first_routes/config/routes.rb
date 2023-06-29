Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # resources :users

  get "/users", to: "users#index", as: "users"
  post "/users", to: "users#create"
  get "/users/:id", to: "users#show", as: "user"
  patch "/users/:id", to: "users#update"
  delete "/users/:id", to: "users#delete"

  resources :artworks, except: [:new, :edit]

  get "/artwork_shares/:user_id", to: "artwork_shares#index", as: "artwork_shares"
  post "/artwork_shares", to: "artwork_shares#create"
  delete "/artwork_shares/:id", to: "artwork_shares#delete"

  resources :users do
    resources :artworks, only: [:index]
  end
end
