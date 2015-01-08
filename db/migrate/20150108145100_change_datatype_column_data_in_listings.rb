class ChangeDatatypeColumnDataInListings < ActiveRecord::Migration
  def change
  	change_column :listings, :data, :text
  end
end
