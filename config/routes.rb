Rails.application.routes.draw do
  root "books#index"

  resources :books
  resources :rents
  devise_for :users

  patch '/rents/:id/rent', to: 'rents#rent', as: 'rent_book'
  patch '/rents/:id/return', to: 'rents#return', as: 'return_book'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
