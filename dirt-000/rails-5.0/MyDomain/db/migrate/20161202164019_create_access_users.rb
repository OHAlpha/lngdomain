class CreateAccessUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :access_users do |t|
      t.string :unom
      t.string :email
      t.string :salt
      t.string :hashkey
      t.integer :iterations
      t.string :passhash
      t.string :fnom
      t.string :mnoms
      t.string :lnom

      t.timestamps
    end
  end
end
