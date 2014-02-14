class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.integer :week
      t.datetime :due
      t.text :description
      t.references :lesson, index: true

      t.timestamps
    end
  end
end
