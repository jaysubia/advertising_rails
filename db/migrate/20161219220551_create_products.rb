class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.references :rep, foreign_key: true
      t.string :street_address
      t.string :city
      t.string :state
      t.integer :zip
      t.string :panel_size
      t.string :lat_long

      t.timestamps
    end
  end
end
