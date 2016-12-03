json.extract! wof_game, :id, :name, :sequence, :state, :status, :details, :created_at, :updated_at
json.url wof_game_url(wof_game, format: :json)