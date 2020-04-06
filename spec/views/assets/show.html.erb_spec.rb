require 'rails_helper'

RSpec.describe "assets/show", type: :view do
  before(:each) do
    @asset = assign(:asset, Asset.create!(
      asset_tag: "Asset Tag",
      serial_number: "Serial Number",
      category: nil,
      model: nil,
      primary_user: "Primary User",
      location: nil,
      notes: "MyText",
      is_deleted: false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Asset Tag/)
    expect(rendered).to match(/Serial Number/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Primary User/)
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
  end
end
