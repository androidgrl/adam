class Seat < ActiveRecord::Base
  belongs_to :plane
  has_one :ticket
end
