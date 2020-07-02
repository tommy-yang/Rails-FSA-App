require 'rails_helper'

RSpec.describe "weekdays/new", type: :view do
  before(:each) do
    assign(:weekday, Weekday.new(
      day: "MyString"
    ))
  end

  it "renders new weekday form" do
    render

    assert_select "form[action=?][method=?]", weekdays_path, "post" do

      assert_select "input[name=?]", "weekday[day]"
    end
  end
end
