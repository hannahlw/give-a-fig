class CommunityRequester < ActiveRecord::Base
  belongs_to :requester
  belongs_to :community

  validates_uniqueness_of :requester_id, :scope => :community_id
end
