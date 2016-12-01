class Comment < ApplicationRecord
  belongs_to :author, foreign_key: :author_id, class_name: "User"
  belongs_to :parent_post, foreign_key: :post_id, class_name: "Post"
end
