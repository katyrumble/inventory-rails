require 'rails_helper'

RSpec.describe "assets/index", type: :view do
  before(:each) do
    assign(:assets, [
      Asset.create!(
        asset_tag: "Asset Tag",
        serial_number: "Serial Number",
        category: nil,
        model: nil,
        primary_user: "Primary User",
        location: nil,
        notes: "MyText",
        is_deleted: false
      ),
      Asset.create!(
        asset_tag: "Asset Tag",
        serial_number: "Serial Number",
        category: nil,
        model: nil,
        primary_user: "Primary User",
        location: nil,
        notes: "MyText",
        is_deleted: false
      )
    ])
  end

  it "renders a list of assets" do
    render
    assert_select "tr>td", text: "Asset Tag".to_s, count: 2
    assert_select "tr>td", text: "Serial Number".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: "Primary User".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
  end
end
