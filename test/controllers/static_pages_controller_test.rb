require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get intro" do
    get :intro
    assert_response :success
  end

  test "should get premises" do
    get :premises
    assert_response :success
  end

  test "should get history" do
    get :history
    assert_response :success
  end

end
