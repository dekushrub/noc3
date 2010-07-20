class CreateDhcpScopes < ActiveRecord::Migration
  def self.up
    create_table :dhcp_scopes do |t|
      t.string :dhcp_start
      t.string :dhcp_end
      t.integer :subnet_id

      t.timestamps
    end
  end

  def self.down
    drop_table :dhcp_scopes
  end
end
