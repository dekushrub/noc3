class Subnet < ActiveRecord::Base
  belongs_to :vlan
  has_many :dhcp_scopes
  def to_s
    "#{self.base}/#{self.mask}"
  end
end
