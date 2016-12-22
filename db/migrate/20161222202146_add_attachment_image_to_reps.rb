class AddAttachmentImageToReps < ActiveRecord::Migration
  def self.up
    change_table :reps do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :reps, :image
  end
end
