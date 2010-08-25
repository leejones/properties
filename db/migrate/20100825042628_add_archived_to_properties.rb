class AddArchivedToProperties < ActiveRecord::Migration
  def self.up
    add_column :properties, :archived, :boolean, :default => 0
  end

  def self.down
    remove_column :properties, :archived
  end
end
