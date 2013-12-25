class RemoveSemestersFromProjects < ActiveRecord::Migration
  def change
    remove_column :projects, :year
    remove_column :projects, :semester
  end
end
