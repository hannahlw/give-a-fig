Rails.application.routes.draw do

  resources :food_items

  devise_for :users

  root 'dashboard#index'

  resources :compost_sites
  resources :recipes
  resources :food_donations
  resources :communities


  resources :user_communities, only: [:create, :destroy]

  get 'recipes/not_bad', to: 'recipes#not_bad'

end
