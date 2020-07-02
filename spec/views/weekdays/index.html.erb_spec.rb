require 'rails_helper'

RSpec.describe "weekdays/index", type: :view do
  before(:each) do
    assign(:weekdays, [
      Weekday.create!(
        day: "Day"
      ),
      Weekday.create!(
        day: "Day"
      )
    ])
  end

  it "renders a list of weekdays" do
    render
    assert_select "tr>td", text: "Day".to_s, count: 2
  end
end
