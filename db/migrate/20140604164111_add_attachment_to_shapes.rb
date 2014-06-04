class AddAttachmentToShapes < ActiveRecord::Migration
  def self.up
    change_table :shapes do |t|
      t.attachment :path
    end
  end

  def self.down
    drop_attached_file :shapes, :path
  end
end
