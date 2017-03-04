class Airport < ActiveRecord::Base
  has_many :pilots
  has_many :planes
end
