Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :users, only: [:index, :create]
  post '/login', controller: :users, action: :login
  post '/sign_up', controller: :users, action: :create
  resources :contact_informations
  resources :addresses
  resources :customers, only: [:create, :update, :show]
  resources :currencies
  resources :unit_of_measures
  resources :categories, only: [:show, :create, :update]
  resources :products
  resources :suppliers
  resources :product_items
  post '/search', controller: :search, action: :search
  get '/category', controller: :categories, action: :index
end
