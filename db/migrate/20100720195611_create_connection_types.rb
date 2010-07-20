class CreateConnectionTypes < ActiveRecord::Migration
  def self.up
    create_table :connection_types do |t|
      t.string :description
      t.decimal :charge
      t.string :bill_description

      t.timestamps
    end
  end

  def self.down
    drop_table :connection_types
  end
end
