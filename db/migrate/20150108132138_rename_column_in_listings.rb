class RenameColumnInListings < ActiveRecord::Migration
  def up
  	rename_column :listings, :sobitie, :event
  end

  def down
  end	
end
