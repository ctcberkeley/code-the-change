class AddAttachmentImageToOfficers < ActiveRecord::Migration
  def self.up
    change_table :officers do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :officers, :image
  end
end
