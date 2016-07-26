module Properties
  class Machinery < Property
    has_one :machinery_detail, foreign_key: 'property_id'
    accepts_nested_attributes_for :machinery_detail
  end
end
