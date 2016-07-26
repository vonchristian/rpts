module Properties
  class Building < Property
    has_one :structural_characteristic, foreign_key: 'property_id'
    accepts_nested_attributes_for :structural_characteristic
  end
end
