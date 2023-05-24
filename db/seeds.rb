# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

20.times do |i|
  Flat.create!(
    name: Faker::Science.scientist,
    address: Faker::Address.street_address,
    description: Faker::Company.catch_phrase,
    price_per_night: rand(100..250),
    number_of_guests: rand(2..6),
    pets_allowed: [true, false].sample
  )
end
