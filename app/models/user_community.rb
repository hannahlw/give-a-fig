class UserCommunity < ActiveRecord::Base
  belongs_to :user
  belongs_to :community
  validates_uniqueness_of :user_id, :scope => :community_id
end
