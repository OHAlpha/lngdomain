require 'test_helper'

class Wof::GamePlayersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wof_game_player = wof_game_players(:one)
  end

  test "should get index" do
    get wof_game_players_url
    assert_response :success
  end

  test "should get new" do
    get new_wof_game_player_url
    assert_response :success
  end

  test "should create wof_game_player" do
    assert_difference('Wof::GamePlayer.count') do
      post wof_game_players_url, params: { wof_game_player: { details: @wof_game_player.details, game_id: @wof_game_player.game_id, position: @wof_game_player.position, score: @wof_game_player.score, state: @wof_game_player.state, status: @wof_game_player.status, user_id: @wof_game_player.user_id } }
    end

    assert_redirected_to wof_game_player_url(Wof::GamePlayer.last)
  end

  test "should show wof_game_player" do
    get wof_game_player_url(@wof_game_player)
    assert_response :success
  end

  test "should get edit" do
    get edit_wof_game_player_url(@wof_game_player)
    assert_response :success
  end

  test "should update wof_game_player" do
    patch wof_game_player_url(@wof_game_player), params: { wof_game_player: { details: @wof_game_player.details, game_id: @wof_game_player.game_id, position: @wof_game_player.position, score: @wof_game_player.score, state: @wof_game_player.state, status: @wof_game_player.status, user_id: @wof_game_player.user_id } }
    assert_redirected_to wof_game_player_url(@wof_game_player)
  end

  test "should destroy wof_game_player" do
    assert_difference('Wof::GamePlayer.count', -1) do
      delete wof_game_player_url(@wof_game_player)
    end

    assert_redirected_to wof_game_players_url
  end
end
