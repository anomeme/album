Rails.application.routes.draw do
  devise_for :users
  root to: 'pictures#index'
  resources :users, only: [:edit, :update]
  resources :pictures
  resources :photos
  # resources :pictures do
  #   resources :photos
  #   namespace :api do
  #     resources :photos, only: :index, defaults: { format: 'json' }
  #   end
  # end
end
