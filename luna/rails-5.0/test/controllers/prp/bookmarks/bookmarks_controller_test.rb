require 'test_helper'

class Prp::Bookmarks::BookmarksControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get prp_bookmarks_bookmarks_home_url
    assert_response :success
  end

  test "should get index" do
    get prp_bookmarks_bookmarks_index_url
    assert_response :success
  end

  test "should get show" do
    get prp_bookmarks_bookmarks_show_url
    assert_response :success
  end

  test "should get search" do
    get prp_bookmarks_bookmarks_search_url
    assert_response :success
  end

  test "should get create" do
    get prp_bookmarks_bookmarks_create_url
    assert_response :success
  end

  test "should get new" do
    get prp_bookmarks_bookmarks_new_url
    assert_response :success
  end

  test "should get edit" do
    get prp_bookmarks_bookmarks_edit_url
    assert_response :success
  end

  test "should get update" do
    get prp_bookmarks_bookmarks_update_url
    assert_response :success
  end

  test "should get delete" do
    get prp_bookmarks_bookmarks_delete_url
    assert_response :success
  end

  test "should get widget" do
    get prp_bookmarks_bookmarks_widget_url
    assert_response :success
  end

end
