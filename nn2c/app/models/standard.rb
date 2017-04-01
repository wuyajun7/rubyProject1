class Standard < ApplicationRecord
  has_and_belongs_to_many  :brands
end
