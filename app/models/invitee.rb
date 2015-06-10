class Invitee < ActiveRecord::Base
  has_many :invitee_communities
  has_many :communities, through: :invitee_communities
end
