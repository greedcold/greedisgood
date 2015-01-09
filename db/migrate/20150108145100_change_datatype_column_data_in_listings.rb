class ChangeDatatypeColumnDataInListings < ActiveRecord::Migration
  def up
  	change_column :listings, :data, :text
  end

  def down
  	change_column :listings, :data, :decimal
  end
end
