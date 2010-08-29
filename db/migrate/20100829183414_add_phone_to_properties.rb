class AddPhoneToProperties < ActiveRecord::Migration
  def self.up
    add_column :properties, :phone, :string
  end

  def self.down
    remove_column :properties, :phone
  end
end
