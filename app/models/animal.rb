class Animal < ApplicationRecord
  before_save(:titleize_product)
  validates :name, presence: true
  validates :animal_type, presence: true
  validates :age, presence: true
  validates :weight, presence: true

  scope :random, -> {order("RANDOM()")
                    .limit(1)}

  scope :allCats, -> {where(animal_type: "Cat")
                     .order("name asc")}

  scope :allDogs, -> {where(animal_type: "Dog")
                     .order("name asc")}

  scope :allRabbits, -> {where(animal_type: "Rabbit")
                        .order("name asc")}

  scope :largestCat, -> {where(animal_type: "Cat")
                        .order("weight desc")
                        .limit(1)}

  scope :largestDog, -> {where(animal_type: "Dog")
                        .order("weight desc")
                        .limit(1)}

  scope :largestRabbit, -> {where(animal_type: "Rabbit")
                           .order("weight desc")
                           .limit(1)}

  scope :youngestCat, -> {where(animal_type: "Cat")
                         .order("age asc")
                         .limit(1)}
  scope :youngestDog, -> {where(animal_type: "Dog")
                         .order("age asc")
                         .limit(1)}

  scope :youngestRabbit, -> {where(animal_type: "Rabbit")
                         .order("age asc")
                         .limit(1)}

   private
     def titleize_product
       self.name = self.name.titleize
     end
end
