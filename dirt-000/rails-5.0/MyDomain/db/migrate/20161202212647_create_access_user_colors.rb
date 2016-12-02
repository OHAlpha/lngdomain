class CreateAccessUserColors < ActiveRecord::Migration[5.0]
  def change
    create_table :access_user_colors do |t|
      t.references :user, foreign_key: true
      t.string :color
      t.string :ctyp

      t.timestamps
    end
  end
end
