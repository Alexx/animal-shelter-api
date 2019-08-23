# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Animal.destroy_all

types = ['Cat', 'Dog', 'Rabbit']

rand(20..40).times do |index|
  Animal.create!(name: Faker::Name.first_name,
    animal_type: types[0],
    age: rand(1..20),
    weight: rand(3..20))
  end

rand(15..30).times do |index|
  Animal.create!(name: Faker::Name.first_name,
    animal_type: types[1],
    age: rand(1..20),
    weight: rand(10..80))
  end

rand(10..20).times do |index|
  Animal.create!(name: Faker::Name.first_name,
    animal_type: types[2],
    age: rand(1..10),
    weight: rand(2..15))
  end
