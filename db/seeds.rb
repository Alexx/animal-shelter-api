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
  animal = Animal.create!(name: Faker::Dessert.variety,
    animal_type: types[rand(0..2)],)
    if animal.persisted?
      if animal.animal_type == "Cat"
        animal.age = rand(1..15)
        animal.weight = rand(1..20)
      elsif animal.animal_type == "Dog"
        animal.age = rand(1..15)
        animal.weight = rand(5..80)
      elsif animal.animal_type == "Rabbit"
        animal.age = rand(1..10)
        animal.weight = rand(1..10)
      end
    end
  end
