# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Pizza.create(name: "Pepperoni", size: "XL", cost: 25, extra_cheese: true)
Pizza.create(name: "Hawaiian", size: "M", cost: 2, extra_cheese: false)
Pizza.create(name: "Margherita", size: "S", cost: 10, extra_cheese: true)
Pizza.create(name: "Barbecue Chicken", size: "XXL", cost: 30, extra_cheese: false)
