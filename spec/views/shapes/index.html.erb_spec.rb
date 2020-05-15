require 'rails_helper'

RSpec.describe "shapes/index", type: :view do
  before(:each) do
    assign(:shapes, [
      Shape.create!(
        fsa: "Fsa",
        point_one_x: "Point One X",
        point_one_y: "Point One Y",
        point_two_x: "Point Two X",
        point_two_y: "Point Two Y",
        point_three_x: "Point Three X",
        point_three_y: "Point Three Y",
        point_four_x: "Point Four X",
        point_four_y: "Point Four Y"
      ),
      Shape.create!(
        fsa: "Fsa",
        point_one_x: "Point One X",
        point_one_y: "Point One Y",
        point_two_x: "Point Two X",
        point_two_y: "Point Two Y",
        point_three_x: "Point Three X",
        point_three_y: "Point Three Y",
        point_four_x: "Point Four X",
        point_four_y: "Point Four Y"
      )
    ])
  end

  it "renders a list of shapes" do
    render
    assert_select "tr>td", text: "Fsa".to_s, count: 2
    assert_select "tr>td", text: "Point One X".to_s, count: 2
    assert_select "tr>td", text: "Point One Y".to_s, count: 2
    assert_select "tr>td", text: "Point Two X".to_s, count: 2
    assert_select "tr>td", text: "Point Two Y".to_s, count: 2
    assert_select "tr>td", text: "Point Three X".to_s, count: 2
    assert_select "tr>td", text: "Point Three Y".to_s, count: 2
    assert_select "tr>td", text: "Point Four X".to_s, count: 2
    assert_select "tr>td", text: "Point Four Y".to_s, count: 2
  end
end
