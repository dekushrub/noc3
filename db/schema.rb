# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100720170307) do

  create_table "buildings", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "nick"
  end

  create_table "devices", :force => true do |t|
    t.integer  "owner_id"
    t.integer  "equipment_type_id"
    t.integer  "telecom_room_id"
    t.string   "serial_number"
    t.string   "asset_number"
    t.string   "manufacturer"
    t.boolean  "spare"
    t.boolean  "on_maintenance"
    t.date     "purchase_date"
    t.date     "received_date"
    t.integer  "life_cycle"
    t.date     "end_of_life"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  create_table "dhcp_scopes", :force => true do |t|
    t.string   "dhcp_start"
    t.string   "dhcp_end"
    t.integer  "subnet_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "equipment_types", :force => true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "owners", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ports", :force => true do |t|
    t.string   "name"
    t.integer  "neighbor_id"
    t.datetime "idle_since"
    t.string   "mac"
    t.boolean  "active"
    t.string   "interface"
    t.float    "speed"
    t.integer  "vlan_id"
    t.integer  "device_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subnets", :force => true do |t|
    t.string   "description"
    t.string   "base"
    t.string   "mask"
    t.integer  "vlan_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "telecom_rooms", :force => true do |t|
    t.string   "floor"
    t.string   "room"
    t.integer  "building_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vlans", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
