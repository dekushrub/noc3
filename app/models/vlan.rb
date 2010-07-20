class Vlan < ActiveRecord::Base
  has_many :ports
  has_many :subnets
  def to_s
    self.name
  end
end
