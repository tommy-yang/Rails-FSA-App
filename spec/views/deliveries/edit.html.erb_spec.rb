require 'rails_helper'

RSpec.describe "deliveries/edit", type: :view do
  before(:each) do
    @delivery = assign(:delivery, Delivery.create!(
      fsa: "MyString",
      city: "MyString",
      delivery_day: "MyString"
    ))
  end

  it "renders the edit delivery form" do
    render

    assert_select "form[action=?][method=?]", delivery_path(@delivery), "post" do

      assert_select "input[name=?]", "delivery[fsa]"

      assert_select "input[name=?]", "delivery[city]"

      assert_select "input[name=?]", "delivery[delivery_day]"
    end
  end
end
