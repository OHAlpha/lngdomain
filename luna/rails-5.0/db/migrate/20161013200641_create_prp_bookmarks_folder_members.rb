class CreatePrpBookmarksFolderMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :prp_bookmarks_folder_members do |t|
      t.integer :bookmark_id
      t.integer :folder_id

      t.timestamps
    end
  end
end
