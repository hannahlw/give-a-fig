class Community < ActiveRecord::Base
  has_many :user_communities
  has_many :users, through: :user_communities
  has_many :food_items, through: :users
  has_many :invitee_communities
  has_many :invitees, through: :invitee_communities

  belongs_to :admin, :class_name => "User", :foreign_key => "admin_id"

  def is_user_or_admin?(current_user)
    current_user.id == self.admin_id || self.users.include?(current_user)
  end

  def is_admin?(current_user)
    current_user.id == self.admin_id
  end

  def is_invitee?(current_user)
   Invitee.find_by(email: current_user.email) 
  end
end
