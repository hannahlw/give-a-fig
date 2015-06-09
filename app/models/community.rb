class Community < ActiveRecord::Base
  has_many :user_communities
  has_many :users, through: :user_communities
  has_many :food_items, through: :users

  belongs_to :admin, :class_name => "User", :foreign_key => "admin_id"

  def is_user_or_admin?(current_user)
    current_user.id == self.admin_id || self.users.include?(current_user)
  end
end
