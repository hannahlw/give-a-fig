class CreateRequesters < ActiveRecord::Migration
  def change
    create_table :requesters do |t|
      t.string :email

      t.timestamps null: false
    end
  end
end
