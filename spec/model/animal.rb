require 'rails_helper'

describe Animal do
  before_save(:titleize_animal)
  it { should validate_presence_of :name }
  it { should validate_presence_of :animal_type }
  it { should validate_presence_of :age }
  it { should validate_presence_of :weight }

  it("titleizes the name of a animal") do
    product = Animal.create({name: "meatball", animal_type: "Dog", age: 5, weight: 75})
    expect(product.name()).to(eq("Meatbal"))
  end


  private
    def titleize_animal
      self.name = self.name.titleize
    end
end
