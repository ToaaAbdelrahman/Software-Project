require 'test_helper'

class PageControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get library" do
    get :library
    assert_response :success
  end

  test "should get upload" do
    get :upload
    assert_response :success
  end

end
