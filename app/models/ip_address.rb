class IpAddress < ActiveRecord::Base
  belongs_to :subnet
  belongs_to :network, :polymorphic => true
end
