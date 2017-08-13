require 'test_helper'

class MymusicControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
