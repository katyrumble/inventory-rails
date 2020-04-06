require 'rails_helper'

RSpec.describe "assets/edit", type: :view do
  before(:each) do
    @asset = assign(:asset, Asset.create!(
      asset_tag: "MyString",
      serial_number: "MyString",
      category: nil,
      model: nil,
      primary_user: "MyString",
      location: nil,
      notes: "MyText",
      is_deleted: false
    ))
  end

  it "renders the edit asset form" do
    render

    assert_select "form[action=?][method=?]", asset_path(@asset), "post" do

      assert_select "input[name=?]", "asset[asset_tag]"

      assert_select "input[name=?]", "asset[serial_number]"

      assert_select "input[name=?]", "asset[category_id]"

      assert_select "input[name=?]", "asset[model_id]"

      assert_select "input[name=?]", "asset[primary_user]"

      assert_select "input[name=?]", "asset[location_id]"

      assert_select "textarea[name=?]", "asset[notes]"

      assert_select "input[name=?]", "asset[is_deleted]"
    end
  end
end
