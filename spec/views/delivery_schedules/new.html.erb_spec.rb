require 'rails_helper'

RSpec.describe "delivery_schedules/new", type: :view do
  before(:each) do
    assign(:delivery_schedule, DeliverySchedule.new(
      fsa: "MyString",
      city: "MyString",
      delivery_day: "MyString"
    ))
  end

  it "renders new delivery_schedule form" do
    render

    assert_select "form[action=?][method=?]", delivery_schedules_path, "post" do

      assert_select "input[name=?]", "delivery_schedule[fsa]"

      assert_select "input[name=?]", "delivery_schedule[city]"

      assert_select "input[name=?]", "delivery_schedule[delivery_day]"
    end
  end
end
