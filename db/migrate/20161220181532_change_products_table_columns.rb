class ChangeProductsTableColumns < ActiveRecord::Migration[5.0]
  def change
  	remove_column :products, :panel_size
  	add_column :products, :bench_number, :string
  	add_column :products, :traffic, :string
  	add_column :products, :primary_street, :string
  	add_column :products, :direction, :string
  	add_column :products, :secondary_street, :string
  	add_column :products, :cor, :string

  end
end
