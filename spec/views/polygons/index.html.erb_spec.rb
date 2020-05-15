require 'rails_helper'

RSpec.describe "polygons/index", type: :view do
  before(:each) do
    assign(:polygons, [
      Polygon.create!(
        fsa: "Fsa",
        fsa_polygon: "",
        point_test: ""
      ),
      Polygon.create!(
        fsa: "Fsa",
        fsa_polygon: "",
        point_test: ""
      )
    ])
  end

  it "renders a list of polygons" do
    render
    assert_select "tr>td", text: "Fsa".to_s, count: 2
    assert_select "tr>td", text: "".to_s, count: 2
    assert_select "tr>td", text: "".to_s, count: 2
  end
end
