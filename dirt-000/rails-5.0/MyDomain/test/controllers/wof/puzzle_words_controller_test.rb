require 'test_helper'

class Wof::PuzzleWordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wof_puzzle_word = wof_puzzle_words(:one)
  end

  test "should get index" do
    get wof_puzzle_words_url
    assert_response :success
  end

  test "should get new" do
    get new_wof_puzzle_word_url
    assert_response :success
  end

  test "should create wof_puzzle_word" do
    assert_difference('Wof::PuzzleWord.count') do
      post wof_puzzle_words_url, params: { wof_puzzle_word: { column: @wof_puzzle_word.column, orientation: @wof_puzzle_word.orientation, puzzle_id: @wof_puzzle_word.puzzle_id, row: @wof_puzzle_word.row, word: @wof_puzzle_word.word } }
    end

    assert_redirected_to wof_puzzle_word_url(Wof::PuzzleWord.last)
  end

  test "should show wof_puzzle_word" do
    get wof_puzzle_word_url(@wof_puzzle_word)
    assert_response :success
  end

  test "should get edit" do
    get edit_wof_puzzle_word_url(@wof_puzzle_word)
    assert_response :success
  end

  test "should update wof_puzzle_word" do
    patch wof_puzzle_word_url(@wof_puzzle_word), params: { wof_puzzle_word: { column: @wof_puzzle_word.column, orientation: @wof_puzzle_word.orientation, puzzle_id: @wof_puzzle_word.puzzle_id, row: @wof_puzzle_word.row, word: @wof_puzzle_word.word } }
    assert_redirected_to wof_puzzle_word_url(@wof_puzzle_word)
  end

  test "should destroy wof_puzzle_word" do
    assert_difference('Wof::PuzzleWord.count', -1) do
      delete wof_puzzle_word_url(@wof_puzzle_word)
    end

    assert_redirected_to wof_puzzle_words_url
  end
end
