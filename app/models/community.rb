class Community < ActiveRecord::Base
  has_many :user_communities
  has_many :users, through: :user_communities
  has_many :food_items, through: :users
end
