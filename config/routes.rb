Rails.application.routes.draw do
  get 'profile', to: "profiles#show", as: "profile"
  get 'fixers/:id', to: "fixers#show", as: "fixer"
  devise_for :users, controllers: { registrations: "registrations" }
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"

  resources :services

  get "categories/:id", to: "categories#show", as: "category"
  resources :requests do
    resources :reviews, only: [:new, :create]
  end

end
