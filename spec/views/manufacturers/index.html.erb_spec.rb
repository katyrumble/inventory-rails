require 'rails_helper'

RSpec.describe "manufacturers/index", type: :view do
  before(:each) do
    assign(:manufacturers, [
      Manufacturer.create!(
        name: "Name",
        is_deleted: false
      ),
      Manufacturer.create!(
        name: "Name",
        is_deleted: false
      )
    ])
  end

  it "renders a list of manufacturers" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
  end
end
