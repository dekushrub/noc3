class CreateIpAddresses < ActiveRecord::Migration
  def self.up
    create_table :ip_addresses do |t|
      t.string :ip_address
      t.integer :subnet_id
      t.integer :network_id
      t.string :network_type
      t.timestamps
    end
  end

  def self.down
    drop_table :ip_addresses
  end
end
