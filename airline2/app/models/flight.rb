class Flight < ActiveRecord::Base
  belongs_to :plane
  belongs_to :pilot
  belongs_to :arrival_airport, class_name: "Airport"
  belongs_to :departure_airport, class_name: "Airport"
  has_many :tickets
end
