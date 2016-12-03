require 'test_helper'

class OneWolf::Services::Game::WheelOfFortuneControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get one_wolf_services_game_wheel_of_fortune_home_url
    assert_response :success
  end

  test "should get about" do
    get one_wolf_services_game_wheel_of_fortune_about_url
    assert_response :success
  end

  test "should get gameplay" do
    get one_wolf_services_game_wheel_of_fortune_gameplay_url
    assert_response :success
  end

  test "should get stats" do
    get one_wolf_services_game_wheel_of_fortune_stats_url
    assert_response :success
  end

  test "should get games" do
    get one_wolf_services_game_wheel_of_fortune_games_url
    assert_response :success
  end

  test "should get start" do
    get one_wolf_services_game_wheel_of_fortune_start_url
    assert_response :success
  end

  test "should get play" do
    get one_wolf_services_game_wheel_of_fortune_play_url
    assert_response :success
  end

end
