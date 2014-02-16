class ChangeAssignmentColumns < ActiveRecord::Migration
  def change
    remove_column :assignments, :due
    remove_column :assignments, :description
    remove_reference :assignments, :lesson
    add_column :assignments, :url, :string
  end
end
