class AddAirportIdToPlane < ActiveRecord::Migration
  def change
    add_reference :planes, :airport, index: true, foreign_key: true
  end
end
