class Ticket < ActiveRecord::Base
  belongs_to :flight
  belongs_to :passenter
  belongs_to :seat
end
