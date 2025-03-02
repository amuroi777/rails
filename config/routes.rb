Rails.application.routes.draw do
  root 'home#index'
  resources :boards
  resources :comments, only: %i[create destroy edit update]
end
