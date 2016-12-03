class Wof::GameAction < ApplicationRecord
  belongs_to :game
  belongs_to :game_puzzle
  belongs_to :game_user
end
