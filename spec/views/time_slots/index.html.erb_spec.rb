require 'rails_helper'

RSpec.describe "time_slots/index", type: :view do
  before(:each) do
    assign(:time_slots, [
      TimeSlot.create!(
        time: "Time",
        duration: 2
      ),
      TimeSlot.create!(
        time: "Time",
        duration: 2
      )
    ])
  end

  it "renders a list of time_slots" do
    render
    assert_select "tr>td", text: "Time".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
  end
end
