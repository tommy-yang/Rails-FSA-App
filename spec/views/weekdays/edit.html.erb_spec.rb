require 'rails_helper'

RSpec.describe "weekdays/edit", type: :view do
  before(:each) do
    @weekday = assign(:weekday, Weekday.create!(
      day: "MyString"
    ))
  end

  it "renders the edit weekday form" do
    render

    assert_select "form[action=?][method=?]", weekday_path(@weekday), "post" do

      assert_select "input[name=?]", "weekday[day]"
    end
  end
end
