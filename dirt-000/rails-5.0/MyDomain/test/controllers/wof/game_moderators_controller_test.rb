require 'test_helper'

class Wof::GameModeratorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wof_game_moderator = wof_game_moderators(:one)
  end

  test "should get index" do
    get wof_game_moderators_url
    assert_response :success
  end

  test "should get new" do
    get new_wof_game_moderator_url
    assert_response :success
  end

  test "should create wof_game_moderator" do
    assert_difference('Wof::GameModerator.count') do
      post wof_game_moderators_url, params: { wof_game_moderator: { game_id: @wof_game_moderator.game_id, role: @wof_game_moderator.role, user_id: @wof_game_moderator.user_id } }
    end

    assert_redirected_to wof_game_moderator_url(Wof::GameModerator.last)
  end

  test "should show wof_game_moderator" do
    get wof_game_moderator_url(@wof_game_moderator)
    assert_response :success
  end

  test "should get edit" do
    get edit_wof_game_moderator_url(@wof_game_moderator)
    assert_response :success
  end

  test "should update wof_game_moderator" do
    patch wof_game_moderator_url(@wof_game_moderator), params: { wof_game_moderator: { game_id: @wof_game_moderator.game_id, role: @wof_game_moderator.role, user_id: @wof_game_moderator.user_id } }
    assert_redirected_to wof_game_moderator_url(@wof_game_moderator)
  end

  test "should destroy wof_game_moderator" do
    assert_difference('Wof::GameModerator.count', -1) do
      delete wof_game_moderator_url(@wof_game_moderator)
    end

    assert_redirected_to wof_game_moderators_url
  end
end
