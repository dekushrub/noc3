class EquipmentType < ActiveRecord::Base
  has_many :devices
  def to_s
    self.description
  end
end
