Rails.application.routes.draw do
  get 'users/new'
  get 'users/create'
  get 'users/me'
  get 'home/index'
  get 'sessios/create'
  get 'sessios/destroy'
  root 'home#index'
  resources :boards
  resources :comments, only: %i[create destroy edit update]
end
