Rails.application.routes.draw do
  
  devise_for :users
  resources :users, only: [:show] 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'tweets#index'

  get 'hello/index' => 'hello#index'
  get 'hello/link' => 'hello#link'
  get 'tweets' => 'tweets#index'
  get 'tweets/new' => 'tweets#new'

  #root 'hello#index'
  post 'tweets' => 'tweets#create'

  get 'tweets/:id' => 'tweets#show',as: 'tweet'

  patch 'tweets/:id' => 'tweets#update'
  delete 'tweets/:id' => 'tweets#destroy' 
  get 'tweets/:id/edit' => 'tweets#edit', as:'edit_tweet'

  # devise_for :users
  # resources :users

end