require 'test_helper'

class Wof::GamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wof_game = wof_games(:one)
  end

  test "should get index" do
    get wof_games_url
    assert_response :success
  end

  test "should get new" do
    get new_wof_game_url
    assert_response :success
  end

  test "should create wof_game" do
    assert_difference('Wof::Game.count') do
      post wof_games_url, params: { wof_game: { details: @wof_game.details, name: @wof_game.name, sequence: @wof_game.sequence, state: @wof_game.state, status: @wof_game.status } }
    end

    assert_redirected_to wof_game_url(Wof::Game.last)
  end

  test "should show wof_game" do
    get wof_game_url(@wof_game)
    assert_response :success
  end

  test "should get edit" do
    get edit_wof_game_url(@wof_game)
    assert_response :success
  end

  test "should update wof_game" do
    patch wof_game_url(@wof_game), params: { wof_game: { details: @wof_game.details, name: @wof_game.name, sequence: @wof_game.sequence, state: @wof_game.state, status: @wof_game.status } }
    assert_redirected_to wof_game_url(@wof_game)
  end

  test "should destroy wof_game" do
    assert_difference('Wof::Game.count', -1) do
      delete wof_game_url(@wof_game)
    end

    assert_redirected_to wof_games_url
  end
end
