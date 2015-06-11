class CommunityRequester < ActiveRecord::Base
  belongs_to :requester
  belongs_to :community
end
