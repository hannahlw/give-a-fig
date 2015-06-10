class AddStatusToFoodItems < ActiveRecord::Migration
  def change
    add_column :food_items, :status, :string
  end
end
