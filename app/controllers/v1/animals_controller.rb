class V1::AnimalsController < ApplicationController

  def index
    @animals = Animal.all.order("animal_type ASC")
    json_response(@animals)
  end

  def show
    @animal = Animal.find(params[:id])
    json_response(@animal)
  end

  def create
    @animal = Animal.create(animal_params)
    json_response(@animal)
  end

  def update
    @animal= Animal.find(params[:id])
    @animal.update(animal_params)
  end

  def search
    if Animal.find_by_name(params[:name])
      @animal = Animal.find_by_name(params[:name])
      json_response(@animal)
    else
      json_response("Returned no results for '#{params[:name]}'")
    end
  end

  def destroy
    @animal = Animal.find(params[:id])
    @animal.delete
    json_response( "Deleted #{ @animal.name }" )
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

  private
  def animal_params
    params.permit(:name, :animal_type, :age, :weight)
  end
end
