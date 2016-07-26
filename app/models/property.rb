class Property < ApplicationRecord
  has_one :address, as: :addressable, foreign_key: 'addressable_id'
  belongs_to :taxpayer, class_name: 'Taxpayer', foreign_key: 'user_id'
  has_one :administrator, class_name: "User", foreign_key: 'user_id'
  has_many :revisions
  validates :arp_number, :land_area, presence: true
  validates :arp_number, uniqueness: true
  validates :land_area, numericality: true
  #has_many :boundaries
  #sub class
  #actual use
  #area
  #unit value
  #market value
  delegate :details, to: :address, prefix: true
  accepts_nested_attributes_for :address
  accepts_nested_attributes_for :administrator
end
