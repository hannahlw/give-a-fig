Rails.application.routes.draw do

  resources :food_items
  # match "/food_item", to: 'food_item#create', via: 'post'

  devise_for :users

  root 'dashboard#index'

  resources :compost_sites
  resources :recipes
  resources :food_donations
  resources :communities

  resources :user_communities, only: [:create, :destroy]
end
