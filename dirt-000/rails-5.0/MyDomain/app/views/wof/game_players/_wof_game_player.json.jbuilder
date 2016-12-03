json.extract! wof_game_player, :id, :game_id, :user_id, :position, :score, :state, :status, :details, :created_at, :updated_at
json.url wof_game_player_url(wof_game_player, format: :json)