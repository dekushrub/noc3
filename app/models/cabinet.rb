class Cabinet < ActiveRecord::Base
  belongs_to :building
  belongs_to :service
end
