require 'rails_helper'

RSpec.describe "locations/index", type: :view do
  before(:each) do
    assign(:locations, [
      Location.create!(
        name: "Name",
        address_line1: "Address Line1",
        address_line2: "Address Line2",
        city: "City",
        state: "State",
        zip_code: "Zip Code"
      ),
      Location.create!(
        name: "Name",
        address_line1: "Address Line1",
        address_line2: "Address Line2",
        city: "City",
        state: "State",
        zip_code: "Zip Code"
      )
    ])
  end

  it "renders a list of locations" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Address Line1".to_s, count: 2
    assert_select "tr>td", text: "Address Line2".to_s, count: 2
    assert_select "tr>td", text: "City".to_s, count: 2
    assert_select "tr>td", text: "State".to_s, count: 2
    assert_select "tr>td", text: "Zip Code".to_s, count: 2
  end
end
