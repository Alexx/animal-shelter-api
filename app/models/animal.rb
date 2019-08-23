class Animal < ApplicationRecord
  scope :random, -> {order("RANDOM()")
                    .limit(1)}
  scope :largestCat, -> {where(animal_type: "Cat")
                        .order("weight desc")
                        .limit(1)}

  scope :largestDog, -> {where(animal_type: "Dog")
                        .order("weight desc")
                        .limit(1)}

  scope :largestRabbit, -> {where(animal_type: "Rabbit")
                           .order("weight desc")
                           .limit(1)}


end
