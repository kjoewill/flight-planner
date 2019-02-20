require 'rails_helper'

RSpec.describe Pilot, :type => :model do
  it "is valid with valid attributes" do
    pilot = Pilot.new
    pilot.username = 'kjoewill'
    pilot.password = 'kevin'
    expect(pilot).to be_valid
  end

end
