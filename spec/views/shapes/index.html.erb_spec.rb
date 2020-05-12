=begin
require 'rails_helper'

RSpec.describe "shapes/index", type: :view do
  before(:each) do
    assign(:shapes, [
      Shape.create!(
        fsa: "Fsa",
        btm_left_x: "Btm Left X",
        btm_left_y: "Btm Left Y",
        btm_right_x: "Btm Right X",
        btm_right_y: "Btm Right Y",
        top_right_x: "Top Right X",
        top_right_y: "Top Right Y",
        top_left_x: "Top Left X",
        top_left_y: "Top Left Y",
        polygon: "Polygon",
        point: "Point"
      ),
      Shape.create!(
        fsa: "Fsa",
        btm_left_x: "Btm Left X",
        btm_left_y: "Btm Left Y",
        btm_right_x: "Btm Right X",
        btm_right_y: "Btm Right Y",
        top_right_x: "Top Right X",
        top_right_y: "Top Right Y",
        top_left_x: "Top Left X",
        top_left_y: "Top Left Y",
        polygon: "Polygon",
        point: "Point"
      )
    ])
  end

  it "renders a list of shapes" do
    render
    assert_select "tr>td", text: "Fsa".to_s, count: 2
    assert_select "tr>td", text: "Btm Left X".to_s, count: 2
    assert_select "tr>td", text: "Btm Left Y".to_s, count: 2
    assert_select "tr>td", text: "Btm Right X".to_s, count: 2
    assert_select "tr>td", text: "Btm Right Y".to_s, count: 2
    assert_select "tr>td", text: "Top Right X".to_s, count: 2
    assert_select "tr>td", text: "Top Right Y".to_s, count: 2
    assert_select "tr>td", text: "Top Left X".to_s, count: 2
    assert_select "tr>td", text: "Top Left Y".to_s, count: 2
    assert_select "tr>td", text: "Polygon".to_s, count: 2
    assert_select "tr>td", text: "Point".to_s, count: 2
  end
end
=end