class CreateDevices < ActiveRecord::Migration
  def self.up
    create_table :devices do |t|
      t.integer :owner_id
      t.integer :equipment_type_id
      t.integer :telecom_room_id
      t.string :serial_number
      t.string :asset_number
      t.string :manufacturer
      t.boolean :spare
      t.boolean :on_maintenance
      t.date :purchase_date
      t.date :received_date
      t.time :life_cyle
      t.date :end_of_life

      t.timestamps
    end
  end

  def self.down
    drop_table :devices
  end
end
