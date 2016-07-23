class Property < ApplicationRecord
  validates :number, :land_area, presence: true
  validates :land_area, numericality: true
end
