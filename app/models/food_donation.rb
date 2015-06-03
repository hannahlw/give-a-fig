class FoodDonation < ActiveRecord::Base
  geocoded_by :address
  after_validation :geocode

  # def create_donation_hash

end
