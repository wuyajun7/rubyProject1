class CarModel < ApplicationRecord
  has_many :base_cars
  has_one :photo, as: :owner

  belongs_to :brand
  belongs_to :standard
  belongs_to :firm

end
