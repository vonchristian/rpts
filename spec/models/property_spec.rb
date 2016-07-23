require 'rails_helper'

RSpec.describe Property, type: :model do
  describe "associations" do
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of :number }
    it { is_expected.to validate_presence_of :land_area }
    it { is_expected.to validate_numericality_of :land_area }\
  end
end
