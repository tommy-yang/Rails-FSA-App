require 'rails_helper'

RSpec.describe "time_slots/edit", type: :view do
  before(:each) do
    @time_slot = assign(:time_slot, TimeSlot.create!(
      time: "MyString",
      duration: 1
    ))
  end

  it "renders the edit time_slot form" do
    render

    assert_select "form[action=?][method=?]", time_slot_path(@time_slot), "post" do

      assert_select "input[name=?]", "time_slot[time]"

      assert_select "input[name=?]", "time_slot[duration]"
    end
  end
end
