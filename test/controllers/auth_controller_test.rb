require 'test_helper'

class AuthControllerTest < ActionController::TestCase
  test "should get login_email" do
    get :login_email
    assert_response :success
  end

end
