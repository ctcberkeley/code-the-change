class RenameOfficerImageColumn < ActiveRecord::Migration
  def change
    rename_column :officers, :img_url, :img
  end
end
