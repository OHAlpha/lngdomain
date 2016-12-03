require 'test_helper'

class Wof::PuzzleCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wof_puzzle_category = wof_puzzle_categories(:one)
  end

  test "should get index" do
    get wof_puzzle_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_wof_puzzle_category_url
    assert_response :success
  end

  test "should create wof_puzzle_category" do
    assert_difference('Wof::PuzzleCategory.count') do
      post wof_puzzle_categories_url, params: { wof_puzzle_category: { description: @wof_puzzle_category.description, name: @wof_puzzle_category.name } }
    end

    assert_redirected_to wof_puzzle_category_url(Wof::PuzzleCategory.last)
  end

  test "should show wof_puzzle_category" do
    get wof_puzzle_category_url(@wof_puzzle_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_wof_puzzle_category_url(@wof_puzzle_category)
    assert_response :success
  end

  test "should update wof_puzzle_category" do
    patch wof_puzzle_category_url(@wof_puzzle_category), params: { wof_puzzle_category: { description: @wof_puzzle_category.description, name: @wof_puzzle_category.name } }
    assert_redirected_to wof_puzzle_category_url(@wof_puzzle_category)
  end

  test "should destroy wof_puzzle_category" do
    assert_difference('Wof::PuzzleCategory.count', -1) do
      delete wof_puzzle_category_url(@wof_puzzle_category)
    end

    assert_redirected_to wof_puzzle_categories_url
  end
end
