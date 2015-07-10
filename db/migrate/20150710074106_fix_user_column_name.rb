class FixUserColumnName < ActiveRecord::Migration
  def change
  	rename_column :users, :naem, :name
  end
end
