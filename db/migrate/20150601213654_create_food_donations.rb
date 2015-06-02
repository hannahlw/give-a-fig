class CreateFoodDonations < ActiveRecord::Migration
  def change
    create_table :food_donations do |t|
      t.string :name
      t.string :address
      t.string :url

      t.timestamps null: false
    end
  end
end
