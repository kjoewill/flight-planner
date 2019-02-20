require 'rails_helper'

RSpec.describe Flight, :type => :model do

  let (:pilot) {Pilot.create(:username => 'kjoewill', :password => 'kevin')}
  let (:kfly_airport) {Airport.create(:code => 'KFLY', :latitude => 38.945748, :longitude => -104.569893)}
  let (:kcos_airport) {Airport.create(:code => 'KCOS', :latitude => 38.805805, :longitude => -104.700777)}
  let (:klga_airport) {Airport.create(:code => 'KLGA', :latitude => 40.777250, :longitude => -73.872611)}
  let (:airplane) {Airplane.create(:tail_number => 'N91971', :cruise_speed => 55)}
  let (:flight) {Flight.create(:airplane => airplane, :pilot => pilot, :origin_airport => kfly_airport, :destination_airport => kcos_airport, :date => Date.today)}

  it "is valid with valid attributes and can be saved, retrieved and associations accessed" do

    expect(Flight.count).to eq 0 #flight method created in "let" clause is only called when referenced below
    expect(flight).to be_valid
    expect(Flight.count).to eq 1

    flight.reload # = Flight.find(1)
    expect(flight.date).to eq(Date.today)
    expect(flight.airplane).to eq(airplane)
    expect(flight.destination_airport).to eq(kcos_airport)
    expect(flight.origin_airport.code).to eq("KFLY")
    expect(flight.destination_airport.code).to eq("KCOS")

    expect(flight.pilot.flights).to include(flight)
    expect(flight.airplane.pilots).to include(flight.pilot)

  end

  it "knows the distance between its origin and destination airports when they are close" do
    expect(flight.distance).to be_within(0.01).of(10.39)
  end

  it "knows the distance between its origin and destination airports when they are far" do
    flight.destination_airport = klga_airport
    flight.save
    flight.reload
    expect(flight.distance).to be_within(0.1).of(1411.7)
  end

end
