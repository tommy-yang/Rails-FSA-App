require 'rails_helper'

RSpec.describe "polygons/edit", type: :view do
  before(:each) do
    @polygon = assign(:polygon, Polygon.create!(
      fsa: "MyString",
      fsa_polygon: ""
    ))
  end

  it "renders the edit polygon form" do
    render

    assert_select "form[action=?][method=?]", polygon_path(@polygon), "post" do

      assert_select "input[name=?]", "polygon[fsa]"

      assert_select "input[name=?]", "polygon[fsa_polygon]"
    end
  end
end
