class Requester < ActiveRecord::Base
  has_many :community_requesters
  has_many :communities, through: :community_requesters
end
