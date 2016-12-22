class CreateReps < ActiveRecord::Migration[5.0]
  def change
    create_table :reps do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.string :phone
      t.references :administrator, foreign_key: true

      t.timestamps
    end
  end
end
