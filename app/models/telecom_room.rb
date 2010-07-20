class TelecomRoom < ActiveRecord::Base
  belongs_to :building
  has_many :devices
end
