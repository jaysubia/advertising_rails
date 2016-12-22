class AlterColumnTable < ActiveRecord::Migration[5.0]
  def change
  	remove_column :products, :latitude
  	remove_column :products, :longitude
  	add_column :products, :latitude, :float 
  	add_column :products, :longitude, :float 
  end
end
