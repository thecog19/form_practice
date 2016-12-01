class AddIndexTojoinTables < ActiveRecord::Migration[5.0]
  def change
    add_index "posts_users", ["author_id", "post_id"], name: "index_posts_users_on_author_id_and_post_id"
    add_index "posts_tags", ["post_id", "tag_id"], name: "index_posts_tags_on_post_id_and_tag_id"
  end
end
