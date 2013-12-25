class CreateOfficers < ActiveRecord::Migration
  def change
    create_table :officers do |t|
      t.string :name
      t.string :position
      t.string :img_url

      t.timestamps
    end
  end
end
