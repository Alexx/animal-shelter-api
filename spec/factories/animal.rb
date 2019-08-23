require 'rails_helper'

FactoryBot.define do
  factory :animal do
    animal_type {"Cat"}
    name {"Billy"}
    age {2}
    weight {10}
  end
end
