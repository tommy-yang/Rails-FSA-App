require 'test_helper'

class CreateCategoriesTest < ActionDispatch::IntegrationTest

test "get new category form and create category" do
    
get new_category_path
assert_template 'categories/new'
assert_difference 'Category.count', 1 do
    post categories_path, params: {category: {fsa: "V7C1M9"}}
end
follow_redirect!
assert_template 'categories/index'
assert_match "V7C1M9", response.body 
end


end