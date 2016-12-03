class CreateWofGameModeratorActions < ActiveRecord::Migration[5.0]
  def change
    create_table :wof_game_moderator_actions do |t|
      t.references :game, foreign_key: true
      t.references :game_puzzle, foreign_key: true
      t.references :game_user, foreign_key: true
      t.references :game_action, foreign_key: true
      t.string :kind
      t.integer :score
      t.text :details
      t.integer :sequence

      t.timestamps
    end
  end
end
