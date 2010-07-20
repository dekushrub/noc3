class CreateTelecomRooms < ActiveRecord::Migration
  def self.up
    create_table :telecom_rooms do |t|
      t.string :floor
      t.string :room
      t.integer :building_id

      t.timestamps
    end
  end

  def self.down
    drop_table :telecom_rooms
  end
end
