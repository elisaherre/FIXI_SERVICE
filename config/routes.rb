Rails.application.routes.draw do
  get 'profile', to: "profiles#show", as: :profile
  get 'fixers/:id', to: "fixers#show", as: :fixer

  patch 'requests/accept/:id', to: "requests#accept", as: :accept
  patch 'requests/cancel/:id', to: "requests#cancel", as: :cancel
  patch 'requests/book/:id', to: "requests#book", as: :book
  patch 'requests/budget/:id', to: "requests#budget", as: :budget
  patch 'requests/pay/:id', to: "requests#pay", as: :pay

  post "process_payment", to: "payments#process_payment"
  resources :payments

  devise_for :users, controllers: { registrations: "registrations" }
  root to: "pages#home"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"


  get "categories/:id", to: "categories#show", as: :category

  resources :services

  resources :requests, only: [:index, :new, :create, :show] do
    resources :reviews, only: [:new, :create]
  end
end
