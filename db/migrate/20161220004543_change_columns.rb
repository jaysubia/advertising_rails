class ChangeColumns < ActiveRecord::Migration[5.0]
  def change
	remove_column :products, :lat_long
	add_column :products, :latitude, :string
	add_column :products, :longitude, :string
  end
end
