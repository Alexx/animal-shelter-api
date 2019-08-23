# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Animal.destroy_all

types = ['Cat', 'Dog', 'Rabbit']

50.times do |index|
  animal = Animal.create!(name: Faker::Name.first_name,
                          animal_type: types[rand(0..2)],
                          age: rand(1..10),
                          weight: rand(5..20))
    end
