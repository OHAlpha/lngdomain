require 'test_helper'

class Access::UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @access_user = access_users(:one)
  end

  test "should get index" do
    get access_users_url
    assert_response :success
  end

  test "should get new" do
    get new_access_user_url
    assert_response :success
  end

  test "should create access_user" do
    assert_difference('Access::User.count') do
      post access_users_url, params: { access_user: { email: @access_user.email, fnom: @access_user.fnom, hashkey: @access_user.hashkey, iterations: @access_user.iterations, lnom: @access_user.lnom, mnoms: @access_user.mnoms, passhash: @access_user.passhash, salt: @access_user.salt, unom: @access_user.unom } }
    end

    assert_redirected_to access_user_url(Access::User.last)
  end

  test "should show access_user" do
    get access_user_url(@access_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_access_user_url(@access_user)
    assert_response :success
  end

  test "should update access_user" do
    patch access_user_url(@access_user), params: { access_user: { email: @access_user.email, fnom: @access_user.fnom, hashkey: @access_user.hashkey, iterations: @access_user.iterations, lnom: @access_user.lnom, mnoms: @access_user.mnoms, passhash: @access_user.passhash, salt: @access_user.salt, unom: @access_user.unom } }
    assert_redirected_to access_user_url(@access_user)
  end

  test "should destroy access_user" do
    assert_difference('Access::User.count', -1) do
      delete access_user_url(@access_user)
    end

    assert_redirected_to access_users_url
  end
end
