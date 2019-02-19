class Airplane < ActiveRecord::Base
  
  has_many :flights
  has_many :pilots, through: :flights

end
