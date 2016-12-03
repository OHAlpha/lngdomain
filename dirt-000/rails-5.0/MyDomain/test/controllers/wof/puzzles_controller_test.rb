require 'test_helper'

class Wof::PuzzlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wof_puzzle = wof_puzzles(:one)
  end

  test "should get index" do
    get wof_puzzles_url
    assert_response :success
  end

  test "should get new" do
    get new_wof_puzzle_url
    assert_response :success
  end

  test "should create wof_puzzle" do
    assert_difference('Wof::Puzzle.count') do
      post wof_puzzles_url, params: { wof_puzzle: { kind: @wof_puzzle.kind, puzzle: @wof_puzzle.puzzle } }
    end

    assert_redirected_to wof_puzzle_url(Wof::Puzzle.last)
  end

  test "should show wof_puzzle" do
    get wof_puzzle_url(@wof_puzzle)
    assert_response :success
  end

  test "should get edit" do
    get edit_wof_puzzle_url(@wof_puzzle)
    assert_response :success
  end

  test "should update wof_puzzle" do
    patch wof_puzzle_url(@wof_puzzle), params: { wof_puzzle: { kind: @wof_puzzle.kind, puzzle: @wof_puzzle.puzzle } }
    assert_redirected_to wof_puzzle_url(@wof_puzzle)
  end

  test "should destroy wof_puzzle" do
    assert_difference('Wof::Puzzle.count', -1) do
      delete wof_puzzle_url(@wof_puzzle)
    end

    assert_redirected_to wof_puzzles_url
  end
end
