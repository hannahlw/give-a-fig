class AddForeignKeyToFoodItem < ActiveRecord::Migration
  def change
    add_reference :food_items, :community, index: true
    add_foreign_key :food_items, :communities
  end
end
