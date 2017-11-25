require 'random_data'
#create posts
50.times do
  Post.create!(
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph
  )
end

posts = Post.all
#create comments
100.times do
  Comment.create!(
    post: posts.sample,
    body: RandomData.random_paragraph
  )

unique_post = Post.find_or_create_by!(
  title: 'uniqe title',
  body: 'this is an unique body'
)
#
Comment.find_or_create_by!(
  post: unique_post,
  body: 'unique comment'
)

  puts "Seed Finished"
  puts "#{Post.count} posts created"
  puts "#{Comment.count} comments created"
end
