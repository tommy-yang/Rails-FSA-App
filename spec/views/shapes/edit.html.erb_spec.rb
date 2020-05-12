=begin require 'rails_helper'

RSpec.describe "shapes/edit", type: :view do
  before(:each) do
    @shape = assign(:shape, Shape.create!(
      fsa: "MyString",
      btm_left_x: "MyString",
      btm_left_y: "MyString",
      btm_right_x: "MyString",
      btm_right_y: "MyString",
      top_right_x: "MyString",
      top_right_y: "MyString",
      top_left_x: "MyString",
      top_left_y: "MyString",
      polygon: "MyString",
      point: "MyString"
    ))
  end

  it "renders the edit shape form" do
    render

    assert_select "form[action=?][method=?]", shape_path(@shape), "post" do

      assert_select "input[name=?]", "shape[fsa]"

      assert_select "input[name=?]", "shape[btm_left_x]"

      assert_select "input[name=?]", "shape[btm_left_y]"

      assert_select "input[name=?]", "shape[btm_right_x]"

      assert_select "input[name=?]", "shape[btm_right_y]"

      assert_select "input[name=?]", "shape[top_right_x]"

      assert_select "input[name=?]", "shape[top_right_y]"

      assert_select "input[name=?]", "shape[top_left_x]"

      assert_select "input[name=?]", "shape[top_left_y]"

      assert_select "input[name=?]", "shape[polygon]"

      assert_select "input[name=?]", "shape[point]"
    end
  end
end
=end