class CreateWofPuzzleCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :wof_puzzle_categories do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
