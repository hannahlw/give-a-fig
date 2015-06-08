class FoodDonation < ActiveRecord::Base
  geocoded_by :address
  before_validation :geocode

  # def create_donation_hash

  validates :latitude, uniqueness: { scope: :longitude }

end
