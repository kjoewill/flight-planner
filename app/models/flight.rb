class Flight < ActiveRecord::Base
  
  belongs_to :pilot
  belongs_to :airplane
  belongs_to :origin_airport, :class_name => 'Airport', :foreign_key => 'origin_airport_id'
  belongs_to :destination_airport, :class_name => 'Airport', :foreign_key => 'destination_airport_id'

end
