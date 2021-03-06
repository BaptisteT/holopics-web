class AddAttachmentToHolopics < ActiveRecord::Migration
  def self.up
    change_table :holopics do |t|
      t.attachment :avatar
    end
  end

  def self.down
    drop_attached_file :holopics, :avatar
  end
end