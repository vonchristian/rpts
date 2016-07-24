require 'rails_helper'

RSpec.describe "taxpayers/index", type: :view do
  before(:each) do
    assign(:taxpayers, [
      Taxpayer.create!(
        :first_name => "First Name",
        :middle_name => "Middle Name",
        :last_name => "Last Name",
        :suffix => "Suffix",
        :mobile => "Mobile"
      ),
      Taxpayer.create!(
        :first_name => "First Name",
        :middle_name => "Middle Name",
        :last_name => "Last Name",
        :suffix => "Suffix",
        :mobile => "Mobile"
      )
    ])
  end

  it "renders a list of taxpayers" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Middle Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Suffix".to_s, :count => 2
    assert_select "tr>td", :text => "Mobile".to_s, :count => 2
  end
end
