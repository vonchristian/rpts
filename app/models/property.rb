class Property < ApplicationRecord
  has_one :address, as: :addressable, foreign_key: 'addressable_id'
  belongs_to :administrator, class_name: "User", foreign_key: 'user_id'
  validates :arp_number, :land_area, presence: true
  validates :land_area, numericality: true
  #has_many :boundaries
  #sub class
  #actual use
  #area
  #unit value
  #market value

  accepts_nested_attributes_for :address
  accepts_nested_attributes_for :administrator
end
