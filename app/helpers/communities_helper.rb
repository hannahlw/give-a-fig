module CommunitiesHelper
  def member?(community, user)
    community.users.include?(user)
  end
end
