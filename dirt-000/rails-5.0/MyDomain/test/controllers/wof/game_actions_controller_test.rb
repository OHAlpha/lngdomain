require 'test_helper'

class Wof::GameActionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wof_game_action = wof_game_actions(:one)
  end

  test "should get index" do
    get wof_game_actions_url
    assert_response :success
  end

  test "should get new" do
    get new_wof_game_action_url
    assert_response :success
  end

  test "should create wof_game_action" do
    assert_difference('Wof::GameAction.count') do
      post wof_game_actions_url, params: { wof_game_action: { details: @wof_game_action.details, game_id: @wof_game_action.game_id, game_puzzle_id: @wof_game_action.game_puzzle_id, game_user_id: @wof_game_action.game_user_id, kind: @wof_game_action.kind, score: @wof_game_action.score, sequence: @wof_game_action.sequence } }
    end

    assert_redirected_to wof_game_action_url(Wof::GameAction.last)
  end

  test "should show wof_game_action" do
    get wof_game_action_url(@wof_game_action)
    assert_response :success
  end

  test "should get edit" do
    get edit_wof_game_action_url(@wof_game_action)
    assert_response :success
  end

  test "should update wof_game_action" do
    patch wof_game_action_url(@wof_game_action), params: { wof_game_action: { details: @wof_game_action.details, game_id: @wof_game_action.game_id, game_puzzle_id: @wof_game_action.game_puzzle_id, game_user_id: @wof_game_action.game_user_id, kind: @wof_game_action.kind, score: @wof_game_action.score, sequence: @wof_game_action.sequence } }
    assert_redirected_to wof_game_action_url(@wof_game_action)
  end

  test "should destroy wof_game_action" do
    assert_difference('Wof::GameAction.count', -1) do
      delete wof_game_action_url(@wof_game_action)
    end

    assert_redirected_to wof_game_actions_url
  end
end
