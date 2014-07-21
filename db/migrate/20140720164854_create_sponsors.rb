class CreateSponsors < ActiveRecord::Migration
  def change
    create_table :sponsors do |t|
      t.string :name
      t.string :company
      t.string :email
      t.string :package_pref
      t.text :message

      t.timestamps
    end
  end
end
