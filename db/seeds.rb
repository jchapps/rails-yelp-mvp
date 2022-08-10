# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:

Restaurant.destroy_all
puts "Cleaning the DB..."
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
20.times do
  restaurant = Restaurant.new(
    name: Faker::Games::ElderScrolls.name,
    address: Faker::Games::ElderScrolls.city,
    category: Restaurant::CATEGORIES.sample,
    phone_number: Faker::PhoneNumber.cell_phone
  )
  restaurant.save
end
