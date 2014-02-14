class RemoveWeekFromAssignments < ActiveRecord::Migration
  def change
    remove_column :assignments, :week
  end
end
