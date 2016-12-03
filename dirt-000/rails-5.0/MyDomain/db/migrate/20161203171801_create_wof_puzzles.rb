class CreateWofPuzzles < ActiveRecord::Migration[5.0]
  def change
    create_table :wof_puzzles do |t|
      t.string :puzzle
      t.string :kind

      t.timestamps
    end
  end
end
