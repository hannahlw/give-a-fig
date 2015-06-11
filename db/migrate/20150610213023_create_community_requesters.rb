class CreateCommunityRequesters < ActiveRecord::Migration
  def change
    create_table :community_requesters do |t|
      t.belongs_to :requester, index: true
      t.belongs_to :community, index: true

      t.timestamps null: false
    end
    add_foreign_key :community_requesters, :requesters
    add_foreign_key :community_requesters, :communities
  end
end
