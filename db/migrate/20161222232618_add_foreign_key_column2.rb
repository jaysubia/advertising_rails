class AddForeignKeyColumn2 < ActiveRecord::Migration[5.0]
  def change
  	add_reference :users, :rep, index: true
  end
end
