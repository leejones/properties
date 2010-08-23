class AddFavoriteToProperties < ActiveRecord::Migration
  def self.up
    add_column :properties, :favorite, :boolean, :default => false
  end

  def self.down
    remove_column :properties, :favorite
  end
end
