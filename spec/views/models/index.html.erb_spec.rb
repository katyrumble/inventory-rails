require 'rails_helper'

RSpec.describe "models/index", type: :view do
  before(:each) do
    assign(:models, [
      Model.create!(
        manufacturer: nil,
        name: "Name",
        is_boolean: false
      ),
      Model.create!(
        manufacturer: nil,
        name: "Name",
        is_boolean: false
      )
    ])
  end

  it "renders a list of models" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
  end
end
