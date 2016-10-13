require 'test_helper'

class EllesTree::NavigationControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get elles_tree_navigation_home_url
    assert_response :success
  end

end
