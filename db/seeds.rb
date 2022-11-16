# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

10.times do
  new_flat = Flat.new(
    name: Faker::Name.name_with_middle,
    address: Faker::Address.full_address,
    description: Faker::Quote.famous_last_words,
    price_per_night: rand(20..450),
    number_of_guests: rand(1..12)
  )
  new_flat.save!
end
