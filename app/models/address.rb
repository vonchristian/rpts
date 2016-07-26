class Address < ApplicationRecord
  MUNICIPALITIES = ['Lagawe', 'Tinoc', 'Kiangan', 'Asipulo']
  def details
    "#{house_number}, #{street}, #{barangay}, #{municipality}, #{province}"
  end
end
