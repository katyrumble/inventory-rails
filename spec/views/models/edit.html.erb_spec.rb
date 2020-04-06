require 'rails_helper'

RSpec.describe "models/edit", type: :view do
  before(:each) do
    @model = assign(:model, Model.create!(
      manufacturer: nil,
      name: "MyString",
      is_boolean: false
    ))
  end

  it "renders the edit model form" do
    render

    assert_select "form[action=?][method=?]", model_path(@model), "post" do

      assert_select "input[name=?]", "model[manufacturer_id]"

      assert_select "input[name=?]", "model[name]"

      assert_select "input[name=?]", "model[is_boolean]"
    end
  end
end
