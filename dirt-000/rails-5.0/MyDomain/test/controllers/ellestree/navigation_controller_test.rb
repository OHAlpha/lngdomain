require 'test_helper'

class Ellestree::NavigationControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get ellestree_navigation_home_url
    assert_response :success
  end

  test "should get about" do
    get ellestree_navigation_about_url
    assert_response :success
  end

  test "should get contact" do
    get ellestree_navigation_contact_url
    assert_response :success
  end

  test "should get feedback" do
    get ellestree_navigation_feedback_url
    assert_response :success
  end

  test "should get calendar" do
    get ellestree_navigation_calendar_url
    assert_response :success
  end

  test "should get popular" do
    get ellestree_navigation_popular_url
    assert_response :success
  end

  test "should get recent" do
    get ellestree_navigation_recent_url
    assert_response :success
  end

  test "should get news" do
    get ellestree_navigation_news_url
    assert_response :success
  end

  test "should get faq" do
    get ellestree_navigation_faq_url
    assert_response :success
  end

  test "should get index" do
    get ellestree_navigation_index_url
    assert_response :success
  end

  test "should get sitemap" do
    get ellestree_navigation_sitemap_url
    assert_response :success
  end

  test "should get search" do
    get ellestree_navigation_search_url
    assert_response :success
  end

  test "should get results" do
    get ellestree_navigation_results_url
    assert_response :success
  end

  test "should get links" do
    get ellestree_navigation_links_url
    assert_response :success
  end

  test "should get policy" do
    get ellestree_navigation_policy_url
    assert_response :success
  end

  test "should get privacy" do
    get ellestree_navigation_privacy_url
    assert_response :success
  end

  test "should get copyright" do
    get ellestree_navigation_copyright_url
    assert_response :success
  end

  test "should get subscribe" do
    get ellestree_navigation_subscribe_url
    assert_response :success
  end

  test "should get services" do
    get ellestree_navigation_services_url
    assert_response :success
  end

  test "should get products" do
    get ellestree_navigation_products_url
    assert_response :success
  end

  test "should get portfolio" do
    get ellestree_navigation_portfolio_url
    assert_response :success
  end

  test "should get resources" do
    get ellestree_navigation_resources_url
    assert_response :success
  end

  test "should get store" do
    get ellestree_navigation_store_url
    assert_response :success
  end

  test "should get blog" do
    get ellestree_navigation_blog_url
    assert_response :success
  end

  test "should get gallery" do
    get ellestree_navigation_gallery_url
    assert_response :success
  end

  test "should get media" do
    get ellestree_navigation_media_url
    assert_response :success
  end

end
