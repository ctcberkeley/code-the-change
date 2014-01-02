class AddReferenceToProject < ActiveRecord::Migration
  def change
    add_reference(:projects, :terms, index: true)
  end
end
