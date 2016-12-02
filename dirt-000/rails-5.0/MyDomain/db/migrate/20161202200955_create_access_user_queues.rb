class CreateAccessUserQueues < ActiveRecord::Migration[5.0]
  def change
    create_table :access_user_queues do |t|
      t.string :unom
      t.string :email
      t.string :salt
      t.integer :iterations

      t.timestamps
    end
  end
end
