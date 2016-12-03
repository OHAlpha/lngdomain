require 'test_helper'

class OneWolf::Services::GamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @one_wolf_services_game = one_wolf_services_games(:one)
  end

  test "should get index" do
    get one_wolf_services_games_url
    assert_response :success
  end

  test "should get new" do
    get new_one_wolf_services_game_url
    assert_response :success
  end

  test "should create one_wolf_services_game" do
    assert_difference('OneWolf::Services::Game.count') do
      post one_wolf_services_games_url, params: { one_wolf_services_game: { description: @one_wolf_services_game.description, name: @one_wolf_services_game.name, rules: @one_wolf_services_game.rules } }
    end

    assert_redirected_to one_wolf_services_game_url(OneWolf::Services::Game.last)
  end

  test "should show one_wolf_services_game" do
    get one_wolf_services_game_url(@one_wolf_services_game)
    assert_response :success
  end

  test "should get edit" do
    get edit_one_wolf_services_game_url(@one_wolf_services_game)
    assert_response :success
  end

  test "should update one_wolf_services_game" do
    patch one_wolf_services_game_url(@one_wolf_services_game), params: { one_wolf_services_game: { description: @one_wolf_services_game.description, name: @one_wolf_services_game.name, rules: @one_wolf_services_game.rules } }
    assert_redirected_to one_wolf_services_game_url(@one_wolf_services_game)
  end

  test "should destroy one_wolf_services_game" do
    assert_difference('OneWolf::Services::Game.count', -1) do
      delete one_wolf_services_game_url(@one_wolf_services_game)
    end

    assert_redirected_to one_wolf_services_games_url
  end
end
