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
klax = Airport.create(code: 'KLAX', latitude: 33.942494, longitude: -118.408050)
ksea = Airport.create(code: 'KSEA', latitude: 47.449888, longitude: -122.311777)


cub = Airplane.create(tail_number: 'N91971', cruise_speed: 55)
cub.squawks.create([{text: "Engine overheating"}, {text: "Left tire underinflated"}])

da20 = Airplane.create(tail_number: 'N921BD', cruise_speed: 120)
da20.squawks.create([{text: "Needs idle adjustment"}, {text: "Could use a wash"}])

sr22 = Airplane.create(tail_number: 'N652MH', cruise_speed: 200)
sr22.squawks.create([{text: "Com-1 not working"}, {text: "Oxygen tank low"}])

kevin = Pilot.create(username: 'Kevin', password: 'kevin')
tanya = Pilot.create(username: 'Tanya', password: 'tanya')
k2    = Pilot.create(username: 'K2',    password: 'k2')


flights = Flight.create([
  {pilot_id: kevin.id, airplane_id: cub.id,  origin_airport_id: kfly.id, destination_airport_id: kcos.id, date: Date.today},
  {pilot_id: kevin.id, airplane_id: da20.id, origin_airport_id: kcos.id, destination_airport_id: ksea.id, date: Date.today},
  {pilot_id: kevin.id, airplane_id: sr22.id, origin_airport_id: kcos.id, destination_airport_id: kgla.id, date: Date.today},

  {pilot_id: tanya.id, airplane_id: cub.id,  origin_airport_id: kfly.id, destination_airport_id: kcos.id, date: Date.today},
  {pilot_id: tanya.id, airplane_id: da20.id, origin_airport_id: kcos.id, destination_airport_id: klax.id, date: Date.today},
  {pilot_id: tanya.id, airplane_id: sr22.id, origin_airport_id: kcos.id, destination_airport_id: kgla.id, date: Date.today},

  ])
