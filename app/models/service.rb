class Service < ActiveRecord::Base
  has_many :cabinets
  has_many :jobs
  def to_s
    self.description
  end
end
