require 'rails_helper'

RSpec.describe "weekdays/show", type: :view do
  before(:each) do
    @weekday = assign(:weekday, Weekday.create!(
      day: "Day"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Day/)
  end
end
