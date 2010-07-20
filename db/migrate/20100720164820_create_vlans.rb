class CreateVlans < ActiveRecord::Migration
  def self.up
    create_table :vlans do |t|
      t.string :name
      t.string :description
      t.integer :number

      t.timestamps
    end
  end

  def self.down
    drop_table :vlans
  end
end
