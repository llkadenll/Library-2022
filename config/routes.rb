Rails.application.routes.draw do
  root "books#index"

  resources :books
  resources :rents, only: [ :index ]
  devise_for :users

  patch '/rents/:id/rent', to: 'rents#rent', as: 'rent_book'
  patch '/rents/:id/return', to: 'rents#return', as: 'return_book'
end
