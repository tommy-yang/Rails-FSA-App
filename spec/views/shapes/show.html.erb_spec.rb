=begin
require 'rails_helper'

RSpec.describe "shapes/show", type: :view do
  before(:each) do
    @shape = assign(:shape, Shape.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Fsa/)
    expect(rendered).to match(/Btm Left X/)
    expect(rendered).to match(/Btm Left Y/)
    expect(rendered).to match(/Btm Right X/)
    expect(rendered).to match(/Btm Right Y/)
    expect(rendered).to match(/Top Right X/)
    expect(rendered).to match(/Top Right Y/)
    expect(rendered).to match(/Top Left X/)
    expect(rendered).to match(/Top Left Y/)
    expect(rendered).to match(/Polygon/)
    expect(rendered).to match(/Point/)
  end
end
=end