class User < ApplicationRecord
  has_many :authored_comments, foreign_key: :author_id, :class_name => "Comment", dependent: :destroy

  has_many :post_authorings, class_name: "PostsUser", foreign_key: :author_id, dependent: :destroy
  has_many :authored_posts, through: :post_authorings, source: :post

  has_many :tags_on_authored_posts, through: :authored_posts, source: :tags
end
