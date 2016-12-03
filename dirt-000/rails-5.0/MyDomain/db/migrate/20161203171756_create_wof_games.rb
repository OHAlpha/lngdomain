class CreateWofGames < ActiveRecord::Migration[5.0]
  def change
    create_table :wof_games do |t|
      t.string :name
      t.integer :sequence
      t.integer :state
      t.string :status
      t.text :details

      t.timestamps
    end
  end
end
