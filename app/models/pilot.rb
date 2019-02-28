class Pilot < ActiveRecord::Base
  has_secure_password

  validates :username, :presence => true
  validates :username, :uniqueness => true

  has_many :flights
  has_many :airplanes, through: :flights

  def self.find_or_create_by_omniauth(auth_hash)
    self.where(:username => auth_hash["info"]["email"]).first_or_create do |pilot|
      pilot.password = SecureRandom.hex #Dummy pwd since required by 'has_secure_passowrd'
    end
  end

  def miles_flown
    flights.select {|f| f.flown?}.sum(&:distance)
  end

end
