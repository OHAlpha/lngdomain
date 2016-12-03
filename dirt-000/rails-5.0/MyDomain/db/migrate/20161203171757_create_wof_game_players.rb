class CreateWofGamePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :wof_game_players do |t|
      t.references :game, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :position
      t.integer :score
      t.integer :state
      t.string :status
      t.text :details

      t.timestamps
    end
  end
end
