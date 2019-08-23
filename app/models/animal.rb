class Animal < ApplicationRecord
  scope :random, -> {order("RANDOM()").limit(1)}
end
