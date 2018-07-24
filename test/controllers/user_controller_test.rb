require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get dashboad" do
    get user_dashboad_url
    assert_response :success
  end

end
