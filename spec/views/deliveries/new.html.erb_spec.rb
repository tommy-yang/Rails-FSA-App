require 'rails_helper'

RSpec.describe "deliveries/new", type: :view do
  before(:each) do
    assign(:delivery, Delivery.new(
      fsa: "MyString",
      city: "MyString",
      delivery_day: "MyString"
    ))
  end

  it "renders new delivery form" do
    render

    assert_select "form[action=?][method=?]", deliveries_path, "post" do

      assert_select "input[name=?]", "delivery[fsa]"

      assert_select "input[name=?]", "delivery[city]"

      assert_select "input[name=?]", "delivery[delivery_day]"
    end
  end
end
