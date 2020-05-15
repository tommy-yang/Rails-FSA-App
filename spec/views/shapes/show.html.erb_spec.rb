require 'rails_helper'

RSpec.describe "shapes/show", type: :view do
  before(:each) do
    @shape = assign(:shape, Shape.create!(
      fsa: "Fsa",
      point_one_x: "Point One X",
      point_one_y: "Point One Y",
      point_two_x: "Point Two X",
      point_two_y: "Point Two Y",
      point_three_x: "Point Three X",
      point_three_y: "Point Three Y",
      point_four_x: "Point Four X",
      point_four_y: "Point Four Y"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Fsa/)
    expect(rendered).to match(/Point One X/)
    expect(rendered).to match(/Point One Y/)
    expect(rendered).to match(/Point Two X/)
    expect(rendered).to match(/Point Two Y/)
    expect(rendered).to match(/Point Three X/)
    expect(rendered).to match(/Point Three Y/)
    expect(rendered).to match(/Point Four X/)
    expect(rendered).to match(/Point Four Y/)
  end
end
