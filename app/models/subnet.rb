class Subnet < ActiveRecord::Base
  belongs_to :vlan
  has_many :dhcp_scopes
end
