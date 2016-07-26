FactoryGirl.define do
  factory :assessment do
    property nil
    taxable false
    adjusted_market_value "9.99"
    assessment_level "9.99"
    assessed_value "9.99"
    previous_assessed_value "9.99"
    previous_adjusted_market_value "9.99"
    effectivity "2016-07-26"
  end
end
