require 'test_helper'

class Api::V1::CategoryControllerTest < ActionController::TestCase
  test "should get show" do
    get :show
    assert_response :success
  end

end
