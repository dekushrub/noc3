class CreateSubnets < ActiveRecord::Migration
  def self.up
    create_table :subnets do |t|
      t.string :description
      t.string :base
      t.string :mask
      t.integer :vlan_id

      t.timestamps
    end
  end

  def self.down
    drop_table :subnets
  end
end
