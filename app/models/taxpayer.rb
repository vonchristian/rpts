class Taxpayer < User
  has_many :land_properties, class_name: 'Properties::Land', foreign_key: 'user_id'
end
