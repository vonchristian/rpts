require 'rails_helper'

RSpec.describe "taxpayers/edit", type: :view do
  before(:each) do
    @taxpayer = assign(:taxpayer, Taxpayer.create!(
      :first_name => "MyString",
      :middle_name => "MyString",
      :last_name => "MyString",
      :suffix => "MyString",
      :mobile => "MyString"
    ))
  end

  it "renders the edit taxpayer form" do
    render

    assert_select "form[action=?][method=?]", taxpayer_path(@taxpayer), "post" do

      assert_select "input#taxpayer_first_name[name=?]", "taxpayer[first_name]"

      assert_select "input#taxpayer_middle_name[name=?]", "taxpayer[middle_name]"

      assert_select "input#taxpayer_last_name[name=?]", "taxpayer[last_name]"

      assert_select "input#taxpayer_suffix[name=?]", "taxpayer[suffix]"

      assert_select "input#taxpayer_mobile[name=?]", "taxpayer[mobile]"
    end
  end
end
