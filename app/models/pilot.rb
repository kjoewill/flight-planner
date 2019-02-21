class Pilot < ActiveRecord::Base
  has_secure_password
  validates :username, :presence => true
  validates :username, :uniqueness => true

  has_many :flights
  has_many :airplanes, through: :flights

end
