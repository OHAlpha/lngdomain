require 'test_helper'

class Prp::NavigationControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get prp_navigation_home_url
    assert_response :success
  end

end
