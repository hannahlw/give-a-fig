class CreateUserCommunities < ActiveRecord::Migration
  def change
    create_table :user_communities do |t|
      t.belongs_to :user, index: true
      t.belongs_to :community, index: true

      t.timestamps null: false
    end
    add_foreign_key :user_communities, :users
    add_foreign_key :user_communities, :communities
  end
end
