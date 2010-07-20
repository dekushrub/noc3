class Building < ActiveRecord::Base
  has_many :telecom_rooms
end
