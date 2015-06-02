class AddLocationDataToCompostSites < ActiveRecord::Migration
  def change
    add_column :compost_sites, :days, :string
    add_column :compost_sites, :hours, :string
    add_column :compost_sites, :organizer, :string
    add_column :compost_sites, :composted_by, :string
    add_column :compost_sites, :latitude, :float
    add_column :compost_sites, :longitude, :float
  end
end
