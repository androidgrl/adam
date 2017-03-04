class Plane < ActiveRecord::Base
  has_one :flight
  has_many :seats
end
