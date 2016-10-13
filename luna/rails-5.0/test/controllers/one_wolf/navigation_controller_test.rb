require 'test_helper'

class OneWolf::NavigationControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get one_wolf_navigation_home_url
    assert_response :success
  end

end
