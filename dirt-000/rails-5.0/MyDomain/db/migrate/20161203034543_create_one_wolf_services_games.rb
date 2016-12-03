class CreateOneWolfServicesGames < ActiveRecord::Migration[5.0]
  def change
    create_table :one_wolf_services_games do |t|
      t.string :name
      t.string :url
      t.text :description
      t.text :rules

      t.timestamps
    end
  end
end
