class CreatePrpBookmarksBookmarks < ActiveRecord::Migration[5.0]
  def change
    create_table :prp_bookmarks_bookmarks do |t|
      t.string :name
      t.string :title
      t.string :url
      t.text :description
      t.text :tags

      t.timestamps
    end
  end
end
