require 'rails_helper'

RSpec.describe Flight, :type => :model do
  it "is valid with valid attributes and can be saved, retrieved and associations accessed" do

    pilot = Pilot.create(:username => 'kjoewill', :password => 'kevin')
    origin_airport = Airport.create(:code => 'KFLY', :latitude => 38.945748, :longitude => -104.569893)
    destination_airport = Airport.create(:code => 'KCOS', :latitude => 38.805805, :longitude => -104.700777)
    airplane = Airplane.create(:tail_number => 'N91971', :cruise_speed => 55)
    flight = Flight.create(:airplane => airplane, :pilot => pilot, :origin_airport => origin_airport, :destination_airport => destination_airport, :date => Date.today)
    expect(flight).to be_valid

    flight = Flight.find(1)
    expect(flight.date).to eq(Date.today)
    expect(flight.airplane).to eq(airplane)
    expect(flight.destination_airport).to eq(destination_airport)
    expect(flight.origin_airport.code).to eq("KFLY")
    expect(flight.destination_airport.code).to eq("KCOS")

  end

end
