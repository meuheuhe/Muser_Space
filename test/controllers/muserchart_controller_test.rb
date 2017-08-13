require 'test_helper'

class MuserchartControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get cover" do
    get :cover
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

end
