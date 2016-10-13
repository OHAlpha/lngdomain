class CreatePrpBookmarksCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :prp_bookmarks_categories do |t|
      t.string :name
      t.text :description
      t.text :tags

      t.timestamps
    end
  end
end
