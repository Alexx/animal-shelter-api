class AnimalsController < ApplicationController

  def index
    @animals = Animal.all.order("animal_type ASC").limit(100)
    json_response(@animals)
  end

  def random
    @animal = Animal.random
    json_response(@animal)
  end

  #Return all animals by animal_type
  def allCats
    @cats = Animal.allCats
    json_response(@cats)
  end

  def allDogs
    @dogs = Animal.allDogs
    json_response(@dogs)
  end

  def allRabbits
    @rabbits = Animal.allRabbits
    json_response(@rabbits)
  end

  #Return heaviest animal by animal_type
  def largestCat
    @cat = Animal.largestCat
    json_response(@cat)
  end

  def largestDog
    @dog = Animal.largestDog
    json_response(@dog)
  end

  def largestRabbit
    @rabbit = Animal.largestRabbit
    json_response(@rabbit)
  end

  #Return youngest animal by animal_type
  def youngestCat
    @cat = Animal.youngestCat
    json_response(@cat)
  end

  def youngestDog
    @dog = Animal.youngestDog
    json_response(@dog)
  end

  def youngestRabbit
    @rabbit = Animal.youngestRabbit
    json_response(@rabbit)
  end
end
