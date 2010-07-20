class CreateCabinets < ActiveRecord::Migration
  def self.up
    create_table :cabinets do |t|
      t.string :label
      t.integer :building_id
      t.string :room
      t.integer :service_type_id
      t.integer :owner_id
      t.string :contact_first_name
      t.string :contact_last_name
      t.string :contact_phone_number
      t.string :status
      t.boolean :leased
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :cabinets
  end
end
