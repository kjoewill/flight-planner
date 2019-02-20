require 'rails_helper'

RSpec.describe Pilot, :type => :model do

 let (:pilot) { Pilot.create(username: 'kjoewill', password: 'kevin') }
 let (:username) { 'kjoewill'}
 let (:password) { 'kevin'}

  it "is valid with valid attributes" do
    expect(pilot).to be_valid
  end

  it "employs a secure password" do
    expect(pilot.username).to eql(username)
    p = Pilot.find_by(username: username)
    expect(p.authenticate(password)).to be_truthy
  end

end
