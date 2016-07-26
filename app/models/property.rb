class Property < ApplicationRecord
  has_one :address, as: :addressable, foreign_key: 'addressable_id'
  validates :arp_number, :land_area, presence: true
  validates :land_area, numericality: true

  accepts_nested_attributes_for :address
end
