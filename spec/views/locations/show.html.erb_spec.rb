require 'rails_helper'

RSpec.describe "locations/show", type: :view do
  before(:each) do
    @location = assign(:location, Location.create!(
      name: "Name",
      address_line1: "Address Line1",
      address_line2: "Address Line2",
      city: "City",
      state: "State",
      zip_code: "Zip Code"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Address Line1/)
    expect(rendered).to match(/Address Line2/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Zip Code/)
  end
end
