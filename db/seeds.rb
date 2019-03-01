# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

kfly = Airport.create(code: 'KFLY', latitude: 38.945748, longitude: -104.569893)
kcos = Airport.create(code: 'KCOS', latitude: 38.805805, longitude: -104.700777)
klic = Airport.create(code: 'KLIC', latitude: 39.274777, longitude: -103.665861)
kgla = Airport.create(code: 'KLGA', latitude: 40.777250, longitude: -73.872611)

cub = Airplane.create(tail_number: 'N91971', cruise_speed: 55)
cub.squawks.create([{text: "Here the first Cub Squak"}, {text: "Here the second Cub Squak"}])

da20 = Airplane.create(tail_number: 'N921BD', cruise_speed: 120)
da20.squawks.create([{text: "Here the first DA20 Squak"}, {text: "Here the second DA20 Squak"}])

sr22 = Airplane.create(tail_number: 'N652MH', cruise_speed: 200)
sr22.squawks.create([{text: "Here the first SR22 Squak"}, {text: "Here the second SR22 Squak"}])

kevin = Pilot.create(username: 'Kevin', password: 'kevin')
tanya = Pilot.create(username: 'Tanya', password: 'tanya')
k2    = Pilot.create(username: 'K2',    password: 'k2')


flights = Flight.create([
  {pilot_id: kevin.id, airplane_id: cub.id,  origin_airport_id: kfly.id, destination_airport_id: kcos.id, date: Date.today},
  {pilot_id: kevin.id, airplane_id: da20.id, origin_airport_id: kcos.id, destination_airport_id: klic.id, date: Date.today},
  {pilot_id: kevin.id, airplane_id: sr22.id, origin_airport_id: kcos.id, destination_airport_id: kgla.id, date: Date.today},

  {pilot_id: tanya.id, airplane_id: cub.id,  origin_airport_id: kfly.id, destination_airport_id: kcos.id, date: Date.today},
  {pilot_id: tanya.id, airplane_id: da20.id, origin_airport_id: kcos.id, destination_airport_id: klic.id, date: Date.today},
  {pilot_id: tanya.id, airplane_id: sr22.id, origin_airport_id: kcos.id, destination_airport_id: kgla.id, date: Date.today},

  ])
