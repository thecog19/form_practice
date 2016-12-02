class Comment < ApplicationRecord
  belongs_to :author, foreign_key: :author_id, optional: true , class_name: "User"
  belongs_to :parent_post, inverse_of: :comments, foreign_key: :post_id, class_name: "Post"
end
