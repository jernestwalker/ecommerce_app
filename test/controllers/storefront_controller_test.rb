require 'test_helper'

class StorefrontControllerTest < ActionController::TestCase
  test "should get all_items" do
    get :all_items
    assert_response :success
  end

  test "should get items_by_catagory" do
    get :items_by_catagory
    assert_response :success
  end

  test "should get items_by_brand" do
    get :items_by_brand
    assert_response :success
  end

end
