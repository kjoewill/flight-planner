class Pilot < ActiveRecord::Base
  has_secure_password
  validates :username, :length => { :minimum => 6 }

  has_many :flights
  has_many :airplanes, through: :flights

end
