class Firm < ApplicationRecord
  belongs_to :brand
  has_many :car_models
  has_many :base_cars
end
