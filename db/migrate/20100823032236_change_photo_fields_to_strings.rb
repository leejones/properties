class ChangePhotoFieldsToStrings < ActiveRecord::Migration
  def self.up
    change_column :photos, :url, :string
    change_column :photos, :caption, :string
  end

  def self.down
  end
end
