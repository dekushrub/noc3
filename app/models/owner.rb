class Owner < ActiveRecord::Base
  has_many :devices
  def to_s
    self.name
  end
end
