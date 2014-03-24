class RenameColumnOfProjects < ActiveRecord::Migration
  def change
    remove_attachment :projects, :screenshot
    add_attachment :projects, :image
  end
end
