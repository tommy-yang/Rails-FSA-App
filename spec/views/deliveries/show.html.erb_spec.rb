require 'rails_helper'

RSpec.describe "deliveries/show", type: :view do
  before(:each) do
    @delivery = assign(:delivery, Delivery.create!(
      fsa: "Fsa",
      city: "City",
      delivery_day: "Delivery Day"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Fsa/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/Delivery Day/)
  end
end
