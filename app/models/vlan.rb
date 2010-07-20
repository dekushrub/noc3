class Vlan < ActiveRecord::Base
  has_many :ports
  has_many :subnets
end
