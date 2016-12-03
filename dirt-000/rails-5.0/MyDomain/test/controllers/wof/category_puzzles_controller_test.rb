require 'test_helper'

class Wof::CategoryPuzzlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wof_category_puzzle = wof_category_puzzles(:one)
  end

  test "should get index" do
    get wof_category_puzzles_url
    assert_response :success
  end

  test "should get new" do
    get new_wof_category_puzzle_url
    assert_response :success
  end

  test "should create wof_category_puzzle" do
    assert_difference('Wof::CategoryPuzzle.count') do
      post wof_category_puzzles_url, params: { wof_category_puzzle: { puzzle_category_id: @wof_category_puzzle.puzzle_category_id, puzzle_id: @wof_category_puzzle.puzzle_id } }
    end

    assert_redirected_to wof_category_puzzle_url(Wof::CategoryPuzzle.last)
  end

  test "should show wof_category_puzzle" do
    get wof_category_puzzle_url(@wof_category_puzzle)
    assert_response :success
  end

  test "should get edit" do
    get edit_wof_category_puzzle_url(@wof_category_puzzle)
    assert_response :success
  end

  test "should update wof_category_puzzle" do
    patch wof_category_puzzle_url(@wof_category_puzzle), params: { wof_category_puzzle: { puzzle_category_id: @wof_category_puzzle.puzzle_category_id, puzzle_id: @wof_category_puzzle.puzzle_id } }
    assert_redirected_to wof_category_puzzle_url(@wof_category_puzzle)
  end

  test "should destroy wof_category_puzzle" do
    assert_difference('Wof::CategoryPuzzle.count', -1) do
      delete wof_category_puzzle_url(@wof_category_puzzle)
    end

    assert_redirected_to wof_category_puzzles_url
  end
end
