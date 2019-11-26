Rails.application.routes.draw do
  devise_for :users
  root 'article#index'
  resources :users, only: [:edit, :update]
  resources :articles
  resources :pictures
  resources :photos
end
