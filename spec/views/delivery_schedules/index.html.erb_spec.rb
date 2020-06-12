require 'rails_helper'

RSpec.describe "delivery_schedules/index", type: :view do
  before(:each) do
    assign(:delivery_schedules, [
      DeliverySchedule.create!(
        fsa: "Fsa",
        city: "City",
        delivery_day: "Delivery Day"
      ),
      DeliverySchedule.create!(
        fsa: "Fsa",
        city: "City",
        delivery_day: "Delivery Day"
      )
    ])
  end

  it "renders a list of delivery_schedules" do
    render
    assert_select "tr>td", text: "Fsa".to_s, count: 2
    assert_select "tr>td", text: "City".to_s, count: 2
    assert_select "tr>td", text: "Delivery Day".to_s, count: 2
  end
end
