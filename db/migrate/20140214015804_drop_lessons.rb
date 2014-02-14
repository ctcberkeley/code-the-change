class DropLessons < ActiveRecord::Migration
  def change
    drop_table :lessons
  end
end
