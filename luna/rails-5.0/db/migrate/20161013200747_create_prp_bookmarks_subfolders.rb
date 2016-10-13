class CreatePrpBookmarksSubfolders < ActiveRecord::Migration[5.0]
  def change
    create_table :prp_bookmarks_subfolders do |t|
      t.integer :child_id
      t.integer :parent_id

      t.timestamps
    end
  end
end
