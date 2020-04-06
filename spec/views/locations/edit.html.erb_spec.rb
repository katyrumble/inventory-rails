require 'rails_helper'

RSpec.describe "locations/edit", type: :view do
  before(:each) do
    @location = assign(:location, Location.create!(
      name: "MyString",
      address_line1: "MyString",
      address_line2: "MyString",
      city: "MyString",
      state: "MyString",
      zip_code: "MyString"
    ))
  end

  it "renders the edit location form" do
    render

    assert_select "form[action=?][method=?]", location_path(@location), "post" do

      assert_select "input[name=?]", "location[name]"

      assert_select "input[name=?]", "location[address_line1]"

      assert_select "input[name=?]", "location[address_line2]"

      assert_select "input[name=?]", "location[city]"

      assert_select "input[name=?]", "location[state]"

      assert_select "input[name=?]", "location[zip_code]"
    end
  end
end
