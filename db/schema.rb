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

ActiveRecord::Schema.define(:version => 20100721004112) do

  create_table "activity_types", :force => true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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

  create_table "cabinets", :force => true do |t|
    t.string   "label"
    t.integer  "building_id"
    t.string   "room"
    t.integer  "service_id"
    t.integer  "owner_id"
    t.string   "contact_first_name"
    t.string   "contact_last_name"
    t.string   "contact_phone_number"
    t.string   "status"
    t.boolean  "leased"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "connection_types", :force => true do |t|
    t.string   "description"
    t.decimal  "charge"
    t.string   "bill_description"
    t.datetime "created_at"
    t.datetime "updated_at"
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

  create_table "ip_addresses", :force => true do |t|
    t.string   "ip_address"
    t.integer  "subnet_id"
    t.integer  "network_id"
    t.string   "network_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "job_materials", :force => true do |t|
    t.integer  "job_id"
    t.integer  "material_id"
    t.integer  "quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "job_statuses", :force => true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "job_types", :force => true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jobs", :force => true do |t|
    t.integer  "user_id"
    t.boolean  "billable"
    t.date     "completion_date"
    t.date     "request_date"
    t.date     "scheduled_date"
    t.integer  "job_status_id"
    t.integer  "job_type_id"
    t.string   "description"
    t.string   "results"
    t.integer  "service_type_id"
    t.string   "contact_first_name"
    t.string   "contact_last_name"
    t.string   "contact_phone_number"
    t.boolean  "bill_labor_and_materials"
    t.boolean  "rush_job"
    t.integer  "network_id"
    t.string   "network_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "line_types", :force => true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "materials", :force => true do |t|
    t.string   "description"
    t.decimal  "cost"
    t.integer  "quantity_in_stock"
    t.integer  "reorder_quantiy"
    t.string   "manufacturer"
    t.string   "manufacturer_part_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "media_types", :force => true do |t|
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

  create_table "services", :force => true do |t|
    t.string   "descripton"
    t.string   "fund_to_credit"
    t.string   "billing_period"
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

  create_table "users", :force => true do |t|
    t.string   "login",                                :null => false
    t.string   "email",                                :null => false
    t.string   "crypted_password",                     :null => false
    t.string   "password_salt",                        :null => false
    t.string   "persistence_token",                    :null => false
    t.string   "perishable_token",                     :null => false
    t.boolean  "admin",             :default => false
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
