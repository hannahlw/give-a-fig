Rails.application.routes.draw do

  devise_for :users

  root 'dashboard#index'

  resources :compost_sites
  resources :recipes
  resources :food_donations
  resources :communities

  resources :user_communities, only: [:create, :destroy]
end
