Rails.application.routes.draw do
  devise_for :users
  root "books#index"
  post "/" => "books#create"
  resources :books, only: [:new, :create, :edit, :index, :show, :destroy]
  resources :users, only: [:show, :edit, :update]
end
