class TelecomRoom < ActiveRecord::Base
  belongs_to :building
  has_many :devices
  def to_s
    "#{self.building.nick}-#{self.floor}-#{self.room}"
  end
end
