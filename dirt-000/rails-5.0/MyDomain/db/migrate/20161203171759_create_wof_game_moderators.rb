class CreateWofGameModerators < ActiveRecord::Migration[5.0]
  def change
    create_table :wof_game_moderators do |t|
      t.references :game, foreign_key: true
      t.references :user, foreign_key: true
      t.string :role

      t.timestamps
    end
  end
end
