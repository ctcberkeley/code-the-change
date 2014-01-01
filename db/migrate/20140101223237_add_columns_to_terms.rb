class AddColumnsToTerms < ActiveRecord::Migration
  def change
    add_column :terms, :season, :string
    add_column :terms, :year, :integer
  end
end
