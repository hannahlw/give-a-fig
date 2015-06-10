class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :user_communities

  has_many :communities, through: :user_communities
  has_many :communities, :foreign_key => "admin_id"

  has_many :food_items, :foreign_key => "poster_id"
  has_many :food_items, :foreign_key => "claimer_id"

  def my_food
    FoodItem.where("poster_id = ?", self.id)
  end

  def their_food
  end
end
