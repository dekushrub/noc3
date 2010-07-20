class AddNameToDevices < ActiveRecord::Migration
  def self.up
    add_column :devices, :name, :string
  end

  def self.down
    remove_column :devices, :name
  end
end
