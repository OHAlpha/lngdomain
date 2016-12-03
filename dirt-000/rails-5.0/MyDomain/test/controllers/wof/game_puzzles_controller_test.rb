require 'test_helper'

class Wof::GamePuzzlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wof_game_puzzle = wof_game_puzzles(:one)
  end

  test "should get index" do
    get wof_game_puzzles_url
    assert_response :success
  end

  test "should get new" do
    get new_wof_game_puzzle_url
    assert_response :success
  end

  test "should create wof_game_puzzle" do
    assert_difference('Wof::GamePuzzle.count') do
      post wof_game_puzzles_url, params: { wof_game_puzzle: { game_id: @wof_game_puzzle.game_id, puzzle_id: @wof_game_puzzle.puzzle_id, role: @wof_game_puzzle.role } }
    end

    assert_redirected_to wof_game_puzzle_url(Wof::GamePuzzle.last)
  end

  test "should show wof_game_puzzle" do
    get wof_game_puzzle_url(@wof_game_puzzle)
    assert_response :success
  end

  test "should get edit" do
    get edit_wof_game_puzzle_url(@wof_game_puzzle)
    assert_response :success
  end

  test "should update wof_game_puzzle" do
    patch wof_game_puzzle_url(@wof_game_puzzle), params: { wof_game_puzzle: { game_id: @wof_game_puzzle.game_id, puzzle_id: @wof_game_puzzle.puzzle_id, role: @wof_game_puzzle.role } }
    assert_redirected_to wof_game_puzzle_url(@wof_game_puzzle)
  end

  test "should destroy wof_game_puzzle" do
    assert_difference('Wof::GamePuzzle.count', -1) do
      delete wof_game_puzzle_url(@wof_game_puzzle)
    end

    assert_redirected_to wof_game_puzzles_url
  end
end
