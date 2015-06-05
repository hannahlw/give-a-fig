Rails.application.routes.draw do

  resources :communities

  root 'dashboard#index'

  resources :compost_sites
  resources :recipes
  resources :food_donations

  devise_for :users

end
