class RenamePostsToArticles < ActiveRecord::Migration[7.2]
  def change
    rename_table :posts, :articles
  end
end
