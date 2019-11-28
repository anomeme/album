Rails.application.routes.draw do
  get 'spots/show'
  devise_for :users
  root 'articles#index'
  resources :users, only: [:edit, :update]
  resources :articles
  resources :pictures
  resources :photos
  resources :spots, only: :show
end
