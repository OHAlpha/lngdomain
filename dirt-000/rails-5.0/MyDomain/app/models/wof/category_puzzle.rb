class Wof::CategoryPuzzle < ApplicationRecord
  belongs_to :puzzle_category
  belongs_to :puzzle
end
