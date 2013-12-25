class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :organization
      t.integer :year
      t.string :semester
      t.text :description
      t.string :url

      t.timestamps
    end
  end
end
