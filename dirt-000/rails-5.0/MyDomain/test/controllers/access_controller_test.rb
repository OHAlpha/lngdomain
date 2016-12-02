require 'test_helper'

class AccessControllerTest < ActionDispatch::IntegrationTest
  test "should get valid_unom" do
    get access_valid_unom_url
    assert_response :success
  end

  test "should get valid_email" do
    get access_valid_email_url
    assert_response :success
  end

  test "should get new_user" do
    get access_new_user_url
    assert_response :success
  end

  test "should get cancel_new_user" do
    get access_cancel_new_user_url
    assert_response :success
  end

  test "should get register" do
    get access_register_url
    assert_response :success
  end

  test "should get user_salt" do
    get access_user_salt_url
    assert_response :success
  end

  test "should get login" do
    get access_login_url
    assert_response :success
  end

  test "should get logout" do
    get access_logout_url
    assert_response :success
  end

  test "should get unregister" do
    get access_unregister_url
    assert_response :success
  end

end
