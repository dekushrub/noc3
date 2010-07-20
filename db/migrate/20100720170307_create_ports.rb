class CreatePorts < ActiveRecord::Migration
  def self.up
    create_table :ports do |t|
      t.string :name
      t.integer :neighbor_id
      t.datetime :idle_since
      t.string :mac
      t.boolean :active
      t.string :interface
      t.float :speed
      t.integer :vlan_id
      t.integer :device_id

      t.timestamps
    end
  end

  def self.down
    drop_table :ports
  end
end
