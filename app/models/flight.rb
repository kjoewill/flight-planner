class Flight < ActiveRecord::Base
  include Math

  belongs_to :pilot
  belongs_to :airplane
  belongs_to :origin_airport, :class_name => 'Airport', :foreign_key => 'origin_airport_id'
  belongs_to :destination_airport, :class_name => 'Airport', :foreign_key => 'destination_airport_id'

  validates :date, presence: true

  #Provide the distance (in nm) between the origin and desination airports
  def distance
    o_pos = {:latitude => origin_airport.latitude, :longitude => origin_airport.longitude}
    d_pos = {:latitude => destination_airport.latitude, :longitude => destination_airport.longitude}
    haversine_distance(o_pos, d_pos)
  end

  def name
    "#{origin_airport.code} to #{destination_airport.code} on #{date}"
  end

  def estimated_duration
    distance / airplane.cruise_speed
  end

private

  #Employ the haversine formula to calulate the distance
  #beteeen two lat/lon pairs provided in deciml degrees
  def haversine_distance(from, to)
    earth_radius = 6371 #nm
    d_lat = to_rad(from[:latitude] - to[:latitude])
    d_lon = to_rad(from[:longitude] - to[:longitude])
    lat1 = to_rad(from[:latitude])
    lat2 = to_rad(to[:latitude])
    lon1 = to_rad(from[:longitude])
    lon2 = to_rad(to[:longitude])

    a = sin(d_lat / 2) * sin(d_lat / 2) + sin(d_lon / 2) *
      sin(d_lon / 2) * cos(lat1) * cos(lat2)
    c = 2 * atan2(sqrt(a), sqrt(1-a))
    earth_radius * c / 1.852 #Division is to convert from kilometers to Nautical miles
  end

  def to_rad(in_degrees)
    in_degrees / 180 * Math::PI
  end

end
