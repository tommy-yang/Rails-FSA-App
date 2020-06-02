require 'rails_helper'

RSpec.describe "polygons/index", type: :view do
  before(:each) do
    assign(:polygons, [
      Polygon.create!(
        fsa: "Fsa",
        fsa_polygon: ""
      ),
      Polygon.create!(
        fsa: "Fsa",
        fsa_polygon: ""
      )
    ])
  end

  it "renders a list of polygons" do
    render
    assert_select "tr>td", text: "Fsa".to_s, count: 2
    assert_select "tr>td", text: "".to_s, count: 2
  end
end
