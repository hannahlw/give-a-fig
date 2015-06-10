class InviteeCommunity < ActiveRecord::Base
  belongs_to :invitee
  belongs_to :community
end
