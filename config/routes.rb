Rails.application.routes.draw do
  get 'mypage', to: 'user#me'
  post 'login' , to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  root 'home#index'
  
  resources :users, only: %i[new create]
  resources :boards
  resources :comments, only: %i[create destroy edit update]
end
