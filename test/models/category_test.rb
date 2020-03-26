require 'test_helper'

class CategoryTest < ActiveSupport:: TestCase

def setup
    @category = Category.new(fsa: "V7C1M9")

end

test "category should be valid" do
    assert @category.valid?


end

test "fsa should be present" do
    
    @category.fsa= ""
    assert_not @category.valid?
end

test "fsa should not be more than 6 characters" do
    
    @category.fsa = "a"*7
    assert_not @category.valid?
end

test "fsa should not be less than 6 characters" do
    
    @category.fsa = "a"*5
    assert_not @category.valid?
end

end