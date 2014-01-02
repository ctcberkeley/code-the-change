class ChangeColumnNameofProject < ActiveRecord::Migration
  def change
    rename_column :projects, :terms_id, :term_id
  end
end
