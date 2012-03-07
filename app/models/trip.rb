class Trip < ActiveRecord::Base
  include DateRangeService

  has_many :hotels
  has_many :extras
end
