require 'rails_helper'

describe "Some Shit" do
  let(:lax) { Airport.create(name: "LAX") }
  let(:dal) { Airport.create(name: "DAL") }
  let!(:pilot1) { Pilot.create(airport: dal) }
  let!(:pilot2) { Pilot.create(airport: lax) }
  let!(:pilot3) { Pilot.create(airport: dal) }
  let!(:other_flight) { Flight.create(departure_airport: dal, pilot: pilot3) }
  let(:flight) { Flight.create(arrival_airport: lax, departure_airport: dal) }

  def find_pilots(flight)
    flight.departure_airport.pilots.reject { |p| p.flight.present? }
  end

  it "finds the correct pilot" do
    expect(find_pilots(flight)).to eq([pilot1])
  end
end
