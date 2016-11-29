require 'test_helper'

class NavigationControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get navigation_home_url
    assert_response :success
  end

  test "should get about" do
    get navigation_about_url
    assert_response :success
  end

  test "should get contact" do
    get navigation_contact_url
    assert_response :success
  end

  test "should get feedback" do
    get navigation_feedback_url
    assert_response :success
  end

  test "should get calendar" do
    get navigation_calendar_url
    assert_response :success
  end

  test "should get popular" do
    get navigation_popular_url
    assert_response :success
  end

  test "should get recent" do
    get navigation_recent_url
    assert_response :success
  end

  test "should get news" do
    get navigation_news_url
    assert_response :success
  end

  test "should get faq" do
    get navigation_faq_url
    assert_response :success
  end

  test "should get index" do
    get navigation_index_url
    assert_response :success
  end

  test "should get sitemap" do
    get navigation_sitemap_url
    assert_response :success
  end

  test "should get search" do
    get navigation_search_url
    assert_response :success
  end

  test "should get results" do
    get navigation_results_url
    assert_response :success
  end

  test "should get links" do
    get navigation_links_url
    assert_response :success
  end

  test "should get policy" do
    get navigation_policy_url
    assert_response :success
  end

  test "should get privacy" do
    get navigation_privacy_url
    assert_response :success
  end

  test "should get copyright" do
    get navigation_copyright_url
    assert_response :success
  end

  test "should get subscribe" do
    get navigation_subscribe_url
    assert_response :success
  end

  test "should get services" do
    get navigation_services_url
    assert_response :success
  end

  test "should get products" do
    get navigation_products_url
    assert_response :success
  end

  test "should get portfolio" do
    get navigation_portfolio_url
    assert_response :success
  end

  test "should get resources" do
    get navigation_resources_url
    assert_response :success
  end

  test "should get store" do
    get navigation_store_url
    assert_response :success
  end

  test "should get blog" do
    get navigation_blog_url
    assert_response :success
  end

  test "should get gallery" do
    get navigation_gallery_url
    assert_response :success
  end

  test "should get media" do
    get navigation_media_url
    assert_response :success
  end

end
