class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.decimal :data
      t.text :sobitie
      t.decimal :price

      t.timestamps null: false
    end
  end
end
