class EquipmentType < ActiveRecord::Base
  has_many :devices
end
