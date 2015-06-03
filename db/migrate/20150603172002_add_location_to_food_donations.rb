class AddLocationToFoodDonations < ActiveRecord::Migration
  def change
    add_column :food_donations, :street_address, :string
    add_column :food_donations, :city, :string
    add_column :food_donations, :state, :string
    add_column :food_donations, :zipcode, :string
    add_column :food_donations, :phone_number, :string
    add_column :food_donations, :hours, :string
    add_column :food_donations, :latitude, :float
    add_column :food_donations, :longitude, :float
  end
end
