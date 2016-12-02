#!/usr/bin/env ruby

# ActiveRecord::Base.logger = Logger.new(STDOUT)

# extend Hirb::Console
#
# puts "*********************************************************"
# puts "NUM 1 (USERS)"
# puts "*********************************************************"
# puts Hirb::Helpers::AutoTable.render User.all
#
# 3.times { puts }
# puts "*********************************************************"
# puts "NUM 1 (COMMENTS)"
# puts "*********************************************************"
# puts Hirb::Helpers::AutoTable.render Comment.all
#
# 3.times { puts }
# puts "*********************************************************"
# puts "NUM 1 (POSTS)"
# puts "*********************************************************"
# puts Hirb::Helpers::AutoTable.render Post.all
#
# 3.times { puts }
# puts "*********************************************************"
# puts "NUM 1 (CATEGORIES)"
# puts "*********************************************************"
# puts Hirb::Helpers::AutoTable.render Category.all
#
# 3.times { puts }
# puts "*********************************************************"
# puts "NUM 1 (TAGS)"
# puts "*********************************************************"
# puts Hirb::Helpers::AutoTable.render Tag.all

3.times { puts }
puts "*********************************************************"
puts "NUM 2 (FIRST USER'S COMMENTS)"
puts "*********************************************************"
puts Hirb::Helpers::AutoTable.render User.first.authored_comments

3.times { puts }
puts "*********************************************************"
puts "NUM 3 (RANDOM COMMENT REASSIGNED TO FIRST USER)"
puts "*********************************************************"
puts "Comment..."
comment = Comment.all.sample
puts Hirb::Helpers::AutoTable.render comment
User.first.authored_comments << comment
puts "Reassigned..."
puts Hirb::Helpers::AutoTable.render comment

3.times { puts }
puts "*********************************************************"
puts "NUM 4 (RANDOM POST REASSIGNED TO FIRST CATEGORY)"
puts "*********************************************************"
puts "Post..."
post = Post.all.sample
puts Hirb::Helpers::AutoTable.render post
Category.first.posts << post
puts "Reassigned..."
puts Hirb::Helpers::AutoTable.render post

3.times { puts }
puts "*********************************************************"
puts "NUM 5 (REASSIGN FIRST & SECOND COMMENTS TO FIRST USER)"
puts "*********************************************************"
puts "Before..."
puts Hirb::Helpers::AutoTable.render User.first.authored_comments
User.first.authored_comments = [Comment.first, Comment.second]
puts "After..."
puts Hirb::Helpers::AutoTable.render User.first.authored_comments

3.times { puts }
puts "*********************************************************"
puts "NUM 6 (RANDOM COMMENT'S AUTHORS)"
puts "*********************************************************"
puts Hirb::Helpers::AutoTable.render Comment.all.sample.author

3.times { puts }
puts "*********************************************************"
puts "NUM 7 (RANDOM POST'S COMMENTS)"
puts "*********************************************************"
puts Hirb::Helpers::AutoTable.render Post.all.sample.comments

3.times { puts }
puts "*********************************************************"
puts "NUM 8 (RANDOM COMMENT'S PARENT POST)"
puts "*********************************************************"
puts Hirb::Helpers::AutoTable.render Comment.all.sample.parent_post

3.times { puts }
puts "*********************************************************"
puts "NUM 9 (REMOVING FIRST POST FROM RANDOM CATEGORY)"
puts "*********************************************************"
category = Category.all.sample
puts "Before..."
puts Hirb::Helpers::AutoTable.render category.posts
category.posts.first.destroy
reload!
puts "After..."
puts Hirb::Helpers::AutoTable.render category.posts

3.times { puts }
puts "*********************************************************"
puts "NUM 10 (RANDOM AUTHOR'S POSTS)"
puts "*********************************************************"
puts Hirb::Helpers::AutoTable.render User.all.sample.authored_posts

3.times { puts }
puts "*********************************************************"
puts "NUM 11 (RANDOM AUTHOR'S POST IDS)"
puts "*********************************************************"
puts Hirb::Helpers::AutoTable.render User.all.sample.authored_post_ids

3.times { puts }
puts "*********************************************************"
puts "NUM 12 (REASSIGN POSTS TO RANDOM AUTHOR)"
puts "*********************************************************"
puts "Before..."
user = User.all.sample
puts Hirb::Helpers::AutoTable.render user.authored_posts
user.authored_posts = [Post.first, Post.second]
puts "After..."
puts Hirb::Helpers::AutoTable.render user.authored_posts

3.times { puts }
puts "*********************************************************"
puts "NUM 13 (RANDOM POST'S AUTHORS)"
puts "*********************************************************"
puts Hirb::Helpers::AutoTable.render Post.all.sample.authors

3.times { puts }
puts "*********************************************************"
puts "NUM 14 (REASSIGN AUTHORS TO RANDOM POST)"
puts "*********************************************************"
puts "Before..."
post = Post.all.sample
puts Hirb::Helpers::AutoTable.render post.authors
post.authors = [User.first, User.second]
puts "After..."
puts Hirb::Helpers::AutoTable.render post.authors

3.times { puts }
puts "*********************************************************"
puts "NUM 15 (REASSIGN AUTHORS TO RANDOM POST USING IDS)"
puts "*********************************************************"
puts "Before..."
post = Post.all.sample
puts Hirb::Helpers::AutoTable.render post.authors
post.author_ids = [User.first.id, User.second.id]
puts "After..."
puts Hirb::Helpers::AutoTable.render post.authors

3.times { puts }
puts "*********************************************************"
puts "NUM 16 (RANDOM TAG'S POSTS)"
puts "*********************************************************"
puts Hirb::Helpers::AutoTable.render Tag.all.sample.tagged_posts

3.times { puts }
puts "*********************************************************"
puts "NUM 17 (NEW POST ADDED TO TAG)"
puts "*********************************************************"
tag = Tag.all.sample
puts Hirb::Helpers::AutoTable.render tag
tag.tagged_post_ids << Post.last.id
puts Hirb::Helpers::AutoTable.render tag

3.times { puts }
puts "*********************************************************"
puts "NUM 18 (NEW TAG ADDED TO POST)"
puts "*********************************************************"
post = Post.all.sample
puts Hirb::Helpers::AutoTable.render post
post.tag_ids << Tag.last.id
puts Hirb::Helpers::AutoTable.render post

3.times { puts }
puts "*********************************************************"
puts "NUM 19 (RANDOM POST'S TAGS)"
puts "*********************************************************"
puts Hirb::Helpers::AutoTable.render Post.all.sample.tags
