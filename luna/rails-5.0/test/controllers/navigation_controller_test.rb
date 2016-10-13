require 'test_helper'

class NavigationControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get navigation_home_url
    assert_response :success
  end

end
