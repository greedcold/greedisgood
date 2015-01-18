class RenameColumnDateInListings < ActiveRecord::Migration
  def up
    rename_column :listings, :data, :date
  end

  def down
    rename_column :listings, :date, :data
  end
end
