require 'test_helper'

class Access::UserQueuesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @access_user_queue = access_user_queues(:one)
  end

  test "should get index" do
    get access_user_queues_url
    assert_response :success
  end

  test "should get new" do
    get new_access_user_queue_url
    assert_response :success
  end

  test "should create access_user_queue" do
    assert_difference('Access::UserQueue.count') do
      post access_user_queues_url, params: { access_user_queue: { email: @access_user_queue.email, iterations: @access_user_queue.iterations, salt: @access_user_queue.salt, unom: @access_user_queue.unom } }
    end

    assert_redirected_to access_user_queue_url(Access::UserQueue.last)
  end

  test "should show access_user_queue" do
    get access_user_queue_url(@access_user_queue)
    assert_response :success
  end

  test "should get edit" do
    get edit_access_user_queue_url(@access_user_queue)
    assert_response :success
  end

  test "should update access_user_queue" do
    patch access_user_queue_url(@access_user_queue), params: { access_user_queue: { email: @access_user_queue.email, iterations: @access_user_queue.iterations, salt: @access_user_queue.salt, unom: @access_user_queue.unom } }
    assert_redirected_to access_user_queue_url(@access_user_queue)
  end

  test "should destroy access_user_queue" do
    assert_difference('Access::UserQueue.count', -1) do
      delete access_user_queue_url(@access_user_queue)
    end

    assert_redirected_to access_user_queues_url
  end
end
