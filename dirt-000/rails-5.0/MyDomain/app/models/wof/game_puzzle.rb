class Wof::GamePuzzle < ApplicationRecord
  belongs_to :game
  belongs_to :puzzle
end
