class BaseCar < ApplicationRecord
  belongs_to :standard
  belongs_to :brand
  belongs_to :car_model
  has_one :firm, :through => :car_model, :source => :firm
end
