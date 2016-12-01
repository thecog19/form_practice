# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
USER_COUNT = 20

puts 'Creating users'
USER_COUNT.times do |i|
  User.create(
    name: Faker::Name.name,
    created_at: Faker::Date.backward(rand(0..1000))
  )
end

puts 'Creating Categories'
5.times do
  Category.create(
    name: Faker::Hipster.word
  )
end

author_ids = User.pluck(:id)
category_ids = Category.pluck(:id)

puts 'Creating Posts'
100.times do
  Post.create(
    title: Faker::Book.title,
    body: Faker::Hipster.paragraph(rand(1..9)),
    category_id: category_ids.sample
  )
end

post_ids = Post.pluck(:id)

puts 'Creating Comments'
500.times do
  Comment.create(
    body: Faker::Hipster.paragraph,
    post_id: post_ids.sample,
    author_id: author_ids.sample
  )
end

puts 'Creating Tags'
30.times do
  Tag.create(
    name: Faker::Hipster.word
  )
end

tag_ids = Tag.pluck(:id)

puts 'Filling Join Tables'
author_ids.each do |id|
  rand(0..10).times do
    PostsUser.create(
      author_id: id,
      post_id: post_ids.sample
    )
  end
end

post_ids.each do |id|
  rand(0..10).times do
    PostsTag.create(
      post_id: id,
      tag_id: tag_ids.sample
    )
  end
end

puts 'DONE'
