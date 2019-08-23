class AnimalsController < ApplicationController

  def index
    @animals = Animal.all.order("animal_type ASC").limit(100)
    json_response(@animals)
  end
end
