module Properties
  class Land < Property
    has_one :land_detail
    accepts_nested_attributes_for :land_detail
  end
end
