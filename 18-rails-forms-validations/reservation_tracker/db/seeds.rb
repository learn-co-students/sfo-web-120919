# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

c1 = Customer.create(name: 'Nick', hungry: true)
c2 = Customer.create(name: 'Donny', hungry: true)
c3 = Customer.create(name: 'Amelie', hungry: false)
c4 = Customer.create(name: 'Bronte', hungry: false)
c5 = Customer.create(name: 'Brooke', hungry: true)
c6 = Customer.create(name: 'Girija', hungry: false)
c7 = Customer.create(name: 'Jason', hungry: false)
c8 = Customer.create(name: 'Aaron', hungry: false)

r1 = Restaurant.create(name: 'Popeyes', rating: 4, location: 'SF', type_cuisine: 'Chicken')
r2 = Restaurant.create(name: 'KFC', rating: 2, location: 'New Zealand', type_cuisine: 'Chicken')
r3 = Restaurant.create(name: 'Wurstkoch', rating: 5, location: 'LA', type_cuisine: 'Sausages')

Reservation.create(date: DateTime.new(2020, 7, 4, 22, 35, 0), party_size: 10, customer: c1, restaurant: r2)
Reservation.create(date: DateTime.new(2020, 8, 2, 15, 35, 0), party_size: 15, customer: c2, restaurant: r2)
Reservation.create(date: DateTime.new(2020, 6, 29, 22, 35, 0), party_size: 4, customer: c3, restaurant: r1)
Reservation.create(date: DateTime.new(2020, 8, 20, 8, 35, 0), party_size: 7, customer: c4, restaurant: r1)
Reservation.create(date: DateTime.new(2020, 2, 25, 5, 35, 0), party_size: 1, customer: c5, restaurant: r3)
