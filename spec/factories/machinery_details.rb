FactoryGirl.define do
  factory :machinery_detail do
    description "MyString"
    property nil
    brand_and_serial_number "MyString"
    capacity "MyString"
    date_acquired "2016-07-26"
    condition_when_acquired 1
    economic_life_estimated "9.99"
    economic_life_remaining "9.99"
    date_of_installation "2016-07-26"
    date_of_operation "2016-07-26"
    remarks "MyText"
  end
end
