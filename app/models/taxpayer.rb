class Taxpayer < User
  has_many :properties, foreign_key: 'user_id'
  has_many :land_properties, class_name: 'Properties::Land', foreign_key: 'user_id'
  has_many :building_properties, class_name: 'Properties::Building', foreign_key: 'user_id'
  has_many :machinery_properties, class_name: 'Properties::Machinery', foreign_key: 'user_id'
end
