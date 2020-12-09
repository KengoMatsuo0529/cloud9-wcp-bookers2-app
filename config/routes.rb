Rails.application.routes.draw do
  devise_for :users
  root "homes#top"
  resources :books, only: [:new, :create, :edit, :index, :show, :destroy]
  resources :users
end
