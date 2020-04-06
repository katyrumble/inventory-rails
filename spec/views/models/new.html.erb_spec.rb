require 'rails_helper'

RSpec.describe "models/new", type: :view do
  before(:each) do
    assign(:model, Model.new(
      manufacturer: nil,
      name: "MyString",
      is_boolean: false
    ))
  end

  it "renders new model form" do
    render

    assert_select "form[action=?][method=?]", models_path, "post" do

      assert_select "input[name=?]", "model[manufacturer_id]"

      assert_select "input[name=?]", "model[name]"

      assert_select "input[name=?]", "model[is_boolean]"
    end
  end
end
