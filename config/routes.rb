Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :rooms, only: :create
  root "static_pages#home"
end
