class CreateWofGamePuzzles < ActiveRecord::Migration[5.0]
  def change
    create_table :wof_game_puzzles do |t|
      t.references :game, foreign_key: true
      t.references :puzzle, foreign_key: true
      t.string :role

      t.timestamps
    end
  end
end
