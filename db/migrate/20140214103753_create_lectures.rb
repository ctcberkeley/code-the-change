class CreateLectures < ActiveRecord::Migration
  def change
    create_table :lectures do |t|
      t.string :title
      t.string :url
      t.references :lesson, index: true

      t.timestamps
    end
  end
end
