class RemoveSlidesFromLessons < ActiveRecord::Migration
  def change
    remove_column :lessons, :slides
  end
end
