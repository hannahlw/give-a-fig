Rails.application.routes.draw do

  devise_for :users

  root 'dashboard#index'

  resources :compost_sites
  resources :recipes
  resources :food_donations
  resources :communities

  get 'recipes/not_bad', to: 'recipes#not_bad'
end
