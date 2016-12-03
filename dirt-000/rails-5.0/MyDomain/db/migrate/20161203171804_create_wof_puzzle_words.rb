class CreateWofPuzzleWords < ActiveRecord::Migration[5.0]
  def change
    create_table :wof_puzzle_words do |t|
      t.references :puzzle, foreign_key: true
      t.string :word
      t.string :orientation
      t.integer :row
      t.integer :column

      t.timestamps
    end
  end
end
