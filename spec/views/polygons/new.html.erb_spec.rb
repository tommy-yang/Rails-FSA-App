require 'rails_helper'

RSpec.describe "polygons/new", type: :view do
  before(:each) do
    assign(:polygon, Polygon.new(
      fsa: "MyString",
      fsa_polygon: ""
    ))
  end

  it "renders new polygon form" do
    render

    assert_select "form[action=?][method=?]", polygons_path, "post" do

      assert_select "input[name=?]", "polygon[fsa]"

      assert_select "input[name=?]", "polygon[fsa_polygon]"
    end
  end
end
