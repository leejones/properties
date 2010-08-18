class CreateProperties < ActiveRecord::Migration
  def self.up
    create_table :properties do |t|
      t.decimal :price
      t.integer :bedrooms
      t.decimal :bathrooms
      t.text :notes
      t.string :street
      t.string :city
      t.string :state
      t.integer :zip
      t.string :listing_url

      t.timestamps
    end
  end

  def self.down
    drop_table :properties
  end
end
