#!/usr/bin/env ruby

# ActiveRecord::Base.logger = Logger.new(STDOUT)

extend Hirb::Console

User.all

Comment.all

Post.all

Category.all

Tag.all

User.first.authored_comments

User.first.authored_comments << Comment.first

Category.first.posts << Post.last

User.first.authored_comments = [Comment.first, Comment.second]

Comment.first.author

Post.first.comments

Comment.first.parent_post

Category.last.posts.last.destroy

User.last.authored_posts

User.last.authored_post_ids

User.first.authored_posts = [Post.first, Post.second]

Post.second.authors

Post.first.authors = [User.first, User.second]

Post.last.author_ids = [User.first.id, User.second.id]

Tag.last.tagged_posts

Tag.second.tagged_post_ids << Post.last.id

Post.last.tag_ids << Tag.last.id

Post.second.tags
