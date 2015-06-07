class CreateFoodItems < ActiveRecord::Migration
  def change
    create_table :food_items do |t|
      t.string :name
      t.integer :quanity
      t.string :description
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
