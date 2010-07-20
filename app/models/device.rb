class Device < ActiveRecord::Base
  belongs_to :owner
  belongs_to :telecom_room
  belongs_to :equipment_type
end
