class Trip < ActiveRecord::Base
  include Services::DateRangeService

  has_many :hotels
  has_many :extras
end
