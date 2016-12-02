class CreateAccessUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :access_users do |t|
      t.string :unom
      t.string :email
      t.string :client_salt
      t.string :server_salt
      t.integer :iterations
      t.string :passhash
      t.string :fnom
      t.string :mnoms
      t.string :lnom
      t.string :dnom
      t.integer :state
      t.string :status
      t.text :details

      t.timestamps
    end
  end
end
