# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

f1 = Flight.create(air_type: 12345, time: Time.now, num_passengers: 50, destination: "SFO")
f2 = Flight.create(air_type: 987, time: Time.now, num_passengers: 150, destination: "AKL")
f3 = Flight.create(air_type: 234, time: Time.now, num_passengers: 30, destination: "NZ")

p1 = Passenger.create(name: "Girija", passport: true, suitcases: 2)
p2 = Passenger.create(name: "David", passport: false, suitcases: 1)
p3 = Passenger.create(name: "Brooke", passport: true, suitcases: 6)

Ticket.create(date: Date.new, seat_num: 1, passenger_id: p2.id, flight_id: f1.id)
Ticket.create(date: Date.new, seat_num: 5, passenger: p1, flight: f2)
Ticket.create(date: Date.new, seat_num: 20, passenger: p3, flight: f3)
