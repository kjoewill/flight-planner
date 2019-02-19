class Airport < ActiveRecord::Base
  
  has_many :flights_as_origin, :class_name => 'Flight', :foreign_key => 'origin_airport_id'
  has_many :flights_as_destination, :class_name => 'Flight', :foreign_key => 'destination_airport_id'

end
