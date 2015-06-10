class CreateInviteeCommunities < ActiveRecord::Migration
  def change
    create_table :invitee_communities do |t|
      t.belongs_to :invitee, index: true
      t.belongs_to :community, index: true

      t.timestamps null: false
    end
    add_foreign_key :invitee_communities, :invitees
    add_foreign_key :invitee_communities, :communities
  end
end
