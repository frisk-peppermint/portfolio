require 'test_helper'

class SessionsForStaffControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get sessions_for_staff_new_url
    assert_response :success
  end

end
