class DhcpScope < ActiveRecord::Base
  belongs_to :subnet
  def to_s
    "#{self.dhcp_start} - #{self.dhcp_end}"
  end
end
