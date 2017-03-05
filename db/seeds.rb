# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

pas1 = Passenger.create(email: "flat@flat.com", password: "password", name: "tom roberts")
pas2 = Passenger.create(email: "yoyou@flat.com", password: "password", name: "alex roberts")
pas3 = Passenger.create(email: "flat@bot.com", password: "password", name: "lyle roberts")

flight1 = Flight.create(departure_city: "new york", arrival_city: "boston", price: 405, departure_time: 408, arival_time: 807, date: "2015-01-17" )

flight2 = Flight.create(departure_city: "new mexico", arrival_city: "portland", price: 333, departure_time: 1200, arival_time: 807, date: "2017-04-15")

flight3 = Flight.create(departure_city: "tampa", arrival_city: "portland", price: 333, departure_time: 1200, arival_time: 807, date: "2017-04-15")

flight3 = Flight.create(departure_city: "tampa", arrival_city: "portland", price: 333, departure_time: 900, arival_time: 1100, date: "2017-04-15")



pas1.flights << flight1
pas2.flights << flight1
pas3.flights << flight2
