class Brand < ApplicationRecord
  has_and_belongs_to_many :standards

  has_many :car_models, -> { order "name ASC" }
  has_one :photo, as: :owner
  has_many :base_cars
  has_many :firms

  #callback
  before_save :set_pinyin

  def set_pinyin
    if name_changed?
      self.pinyin = PinYin.sentence(name).downcase
    end
  end
end
