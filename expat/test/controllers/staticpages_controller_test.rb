require 'test_helper'

class StaticpagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get how" do
    get :how
    assert_response :success
  end

  test "should get who" do
    get :who
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

end
