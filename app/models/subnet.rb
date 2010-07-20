class Subnet < ActiveRecord::Base
  belongs_to :vlan
  has_many :dhcp_scopes
  has_many :ip_addresses
  def to_s
    "#{self.base}/#{self.mask}"
  end
end
