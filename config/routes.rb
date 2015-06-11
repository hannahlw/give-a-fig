Rails.application.routes.draw do
  resources :food_items

  devise_for :users, :controllers => { registrations: 'registrations' }

  root 'dashboard#index'

  resources :compost_sites
  resources :recipes
  resources :food_donations
  resources :communities

  resources :user_communities, only: [:create, :destroy]

  post 'communities/:id/invite', to: 'communities#invite'
  post 'communities/:id/ask_admin', to: 'communities#ask_admin'
  
  post 'communities/:id/accept', to: 'communities#accept'
  post 'communities/:id/reject', to: 'communities#reject'
end
