class CreatePrpBookmarksCategoryMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :prp_bookmarks_category_members do |t|
      t.integer :bookmark_id
      t.integer :category_id

      t.timestamps
    end
  end
end
