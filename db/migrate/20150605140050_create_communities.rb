class CreateCommunities < ActiveRecord::Migration
  def change
    create_table :communities do |t|
      t.string :name
      t.string :pickup_site
      t.string :tag
    
      t.timestamps null: false
    end
  end
end
