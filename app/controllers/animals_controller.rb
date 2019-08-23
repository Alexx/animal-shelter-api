class AnimalsController < ApplicationController

  def index
    @animals = Animal.all.order("animal_type ASC").limit(100)
    json_response(@animals)
  end

  def random
    @animal = Animal.random
    json_response(@animal)
  end

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
end
