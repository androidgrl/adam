class Pilot < ActiveRecord::Base
  belongs_to :airport
  has_one :flight
end
