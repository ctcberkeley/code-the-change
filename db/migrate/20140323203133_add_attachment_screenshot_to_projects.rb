class AddAttachmentScreenshotToProjects < ActiveRecord::Migration
  def self.up
    change_table :projects do |t|
      t.attachment :screenshot
    end
  end

  def self.down
    drop_attached_file :projects, :screenshot
  end
end
