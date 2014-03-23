class RemoveOldImageColumn < ActiveRecord::Migration
  def change
    remove_column :officers, :img
  end
end
