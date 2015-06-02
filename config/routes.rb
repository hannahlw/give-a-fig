Rails.application.routes.draw do

  get 'dashboard/index'

  resources :compost_sites

  resources :food_donations

  devise_for :users
  root 'devise/sessions#new'

end
