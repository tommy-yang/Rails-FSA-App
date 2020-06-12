require 'rails_helper'

RSpec.describe "delivery_schedules/edit", type: :view do
  before(:each) do
    @delivery_schedule = assign(:delivery_schedule, DeliverySchedule.create!(
      fsa: "MyString",
      city: "MyString",
      delivery_day: "MyString"
    ))
  end

  it "renders the edit delivery_schedule form" do
    render

    assert_select "form[action=?][method=?]", delivery_schedule_path(@delivery_schedule), "post" do

      assert_select "input[name=?]", "delivery_schedule[fsa]"

      assert_select "input[name=?]", "delivery_schedule[city]"

      assert_select "input[name=?]", "delivery_schedule[delivery_day]"
    end
  end
end
