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
end

unique_post = Post.find_or_create_by!(
  title: 'uniqe title',
  body: 'this is an unique body'
)

#
Comment.find_or_create_by!(
  post: unique_post,
  body: 'unique comment'
)


20.times do
  Advertisement.create!(
    title: RandomData.random_sentence,
    copy: RandomData.random_paragraph,
    price: RandomData.random_number
  )
end

  puts "Seed Finished"
  puts "#{Post.count} posts created"
  puts "#{Comment.count} comments created"
  puts "#{Advertisement.count} ads were created"
