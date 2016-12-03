class Wof::GameModeratorAction < ApplicationRecord
  belongs_to :game
  belongs_to :game_puzzle
  belongs_to :game_user
  belongs_to :game_action
end
