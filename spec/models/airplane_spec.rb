require 'rails_helper'

RSpec.describe Airplane, :type => :model do

 let (:airplane_valid) { Airplane.new(tail_number: 'N921BD', cruise_speed: 100) }
 let (:airplane_not_valid) { Airplane.new(tail_number: '9921BD', cruise_speed: 0) }

  it "is valid with valid attributes" do
    expect(airplane_valid).to be_valid
  end

  it "is not valid with invalid attributes" do
    expect(airplane_not_valid).not_to be_valid
  end

end
