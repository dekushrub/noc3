class Device < ActiveRecord::Base
  belongs_to :owner
  belongs_to :telecom_room
  belongs_to :equipment_type
  has_many :ports
  has_one :ip_address, :as => :network
  def to_s
    self.name
  end
end
