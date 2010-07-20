class Port < ActiveRecord::Base
  belongs_to :device
  belongs_to :vlan
  has_one :neighbor, :class_name => "Port", :foreign_key => "neighbor_id"
  belongs_to :neighbor, :class_name => "Port"
end
