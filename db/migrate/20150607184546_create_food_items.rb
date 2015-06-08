class CreateFoodItems < ActiveRecord::Migration
  def change
    create_table :food_items do |t|
      t.string :name
      t.integer :quantity
      t.string :description
      t.integer :poster_id
      t.integer :claimer_id

      t.timestamps null: false
    end
  end
end
