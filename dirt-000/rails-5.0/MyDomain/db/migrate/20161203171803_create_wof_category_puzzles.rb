class CreateWofCategoryPuzzles < ActiveRecord::Migration[5.0]
  def change
    create_table :wof_category_puzzles do |t|
      t.references :puzzle_category, foreign_key: true
      t.references :puzzle, foreign_key: true

      t.timestamps
    end
  end
end
