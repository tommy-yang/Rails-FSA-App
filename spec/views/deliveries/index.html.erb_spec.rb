require 'rails_helper'

RSpec.describe "deliveries/index", type: :view do
  before(:each) do
    assign(:deliveries, [
      Delivery.create!(
        fsa: "Fsa",
        city: "City",
        delivery_day: "Delivery Day"
      ),
      Delivery.create!(
        fsa: "Fsa",
        city: "City",
        delivery_day: "Delivery Day"
      )
    ])
  end

  it "renders a list of deliveries" do
    render
    assert_select "tr>td", text: "Fsa".to_s, count: 2
    assert_select "tr>td", text: "City".to_s, count: 2
    assert_select "tr>td", text: "Delivery Day".to_s, count: 2
  end
end
