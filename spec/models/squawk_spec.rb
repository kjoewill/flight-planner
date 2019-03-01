require 'rails_helper'

RSpec.describe Squawk, :type => :model do

  let (:airplane) { Airplane.new(tail_number: 'N921BD', cruise_speed: 100) }
  let (:squawk_1) { Squawk.create(text: 'First squawk!') }
  let (:squawk_2) { Squawk.create(text: 'Second squawk!') }

  it "participates in relationship with an airplane" do
    airplane.squawks << squawk_1
    expect(squawk_1.airplane).to be(airplane)
  end

  it "participates with other squawks in relationship with an airplane" do
    airplane.squawks << squawk_1
    airplane.squawks << squawk_2
    expect(squawk_1.airplane).to be(airplane)
    expect(squawk_1.airplane).to be(airplane)
    expect(airplane.squawks).to include(squawk_1)
    expect(airplane.squawks).to include(squawk_2)

  end

end
