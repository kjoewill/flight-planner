class Airplane < ActiveRecord::Base

  has_many :flights
  has_many :pilots, through: :flights

  validates :cruise_speed, numericality: {only_integer: true, greater_than: 0}
  validates_with TailNumberValidator

end
