class Passenger < ActiveRecord::Base
  has_one :ticket
end
