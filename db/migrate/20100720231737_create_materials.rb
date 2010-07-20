class CreateMaterials < ActiveRecord::Migration
  def self.up
    create_table :materials do |t|
      t.string :description
      t.decimal :cost
      t.integer :quantity_in_stock
      t.integer :reorder_quantiy
      t.string :manufacturer
      t.string :manufacturer_part_number

      t.timestamps
    end
  end

  def self.down
    drop_table :materials
  end
end
