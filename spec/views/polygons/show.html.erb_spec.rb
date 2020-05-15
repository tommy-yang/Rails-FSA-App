require 'rails_helper'

RSpec.describe "polygons/show", type: :view do
  before(:each) do
    @polygon = assign(:polygon, Polygon.create!(
      fsa: "Fsa",
      fsa_polygon: "",
      point_test: ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Fsa/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
