# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

# generate 20 airports
Flight.destroy_all

Airport.create(code: 'NYC', city: 'New York City', state: 'New York')
Airport.create(code: 'AUS', city: 'Autsin', state: 'Texas')
Airport.create(code: 'ATL', city: 'Atlanta', state: 'Georgia')
Airport.create(code: 'AIY', city: 'Atlantic City', state: 'New Jersey')
Airport.create(code: 'AVL', city: 'Asheville', state: 'North Carolina')
Airport.create(code: 'ALB', city: 'Buffalo', state: 'New York')

(1..20).each do | flight |
  Flight.create(
    date: Faker::Date.between(from: Date.today, to: '2024-12-31'),
    depature_airport_id: Faker::Number.between(from: 1, to: 6),
    arrival_airport_id: Faker::Number.between(from: 1, to: 6),
    flight_code: Faker::Number.between(from: 100, to: 9999),
    time: Faker::Number.between(from: 0.00, to: 23.59),
    duration: Faker::Number.between(from: 30, to: 1200),
    price: Faker::Number.between(from: 70.00, to: 150.00))
end
puts "data loaded success"
