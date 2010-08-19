class CreatePhotos < ActiveRecord::Migration
  def self.up
    create_table :photos do |t|
      t.integer :property_id
      t.text :url
      t.text :caption

      t.timestamps
    end
  end

  def self.down
    drop_table :photos
  end
end
