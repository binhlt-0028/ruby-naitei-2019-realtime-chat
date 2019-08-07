Rails.application.routes.draw do
  devise_for :users
  resources :users, only: :show
  resources :rooms, only: :create
  root "static_pages#home"
end
