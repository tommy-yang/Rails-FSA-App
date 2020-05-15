require 'rails_helper'

RSpec.describe "shapes/edit", type: :view do
  before(:each) do
    @shape = assign(:shape, Shape.create!(
      fsa: "MyString",
      point_one_x: "MyString",
      point_one_y: "MyString",
      point_two_x: "MyString",
      point_two_y: "MyString",
      point_three_x: "MyString",
      point_three_y: "MyString",
      point_four_x: "MyString",
      point_four_y: "MyString"
    ))
  end

  it "renders the edit shape form" do
    render

    assert_select "form[action=?][method=?]", shape_path(@shape), "post" do

      assert_select "input[name=?]", "shape[fsa]"

      assert_select "input[name=?]", "shape[point_one_x]"

      assert_select "input[name=?]", "shape[point_one_y]"

      assert_select "input[name=?]", "shape[point_two_x]"

      assert_select "input[name=?]", "shape[point_two_y]"

      assert_select "input[name=?]", "shape[point_three_x]"

      assert_select "input[name=?]", "shape[point_three_y]"

      assert_select "input[name=?]", "shape[point_four_x]"

      assert_select "input[name=?]", "shape[point_four_y]"
    end
  end
end
