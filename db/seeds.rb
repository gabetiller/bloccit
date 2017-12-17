require 'random_data'

5.times do
   User.create!(
   name:     RandomData.random_name,
   email:    RandomData.random_email,
   password: RandomData.random_sentence
   )
 end
 users = User.all



15.times do
  Topic.create!(
    name:         RandomData.random_sentence,
    description:  RandomData.random_paragraph
  )
end
topics = Topic.all
#create posts

50.times do
  Post.create!(
    user:   users.sample,
    topic:  topics.sample,
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph
  )
end

posts = Post.all
# 30.times do
#   SponsoredPost.create!(
#     topic: topics.sample,
#     title: RandomData.random_sentence,
#     body: RandomData.random_paragraph,
#     price: RandomData.random_number
#   )
# end

#create comments
100.times do
  Comment.create!(
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end

# unique_post = Post.find_or_create_by!(
#   topic: topics.sample,
#   title: 'uniqe title',
#   body: 'this is an unique body'\
# )

#
# Comment.find_or_create_by!(
#   post: unique_post,
#   body: 'unique comment'
# )


# 20.times do
#   Advertisement.create!(
#     title: RandomData.random_sentence,
#     copy: RandomData.random_paragraph,
#     price: RandomData.random_number
#   )
# end

# 20.times do
#   Question.create!(
#     title: RandomData.random_sentence,
#     body: RandomData.random_paragraph
#   )
# end

user = User.first
 user.update_attributes!(
   email: 'gabectiller@gmail.com',
   password: 'helloworld'
 )

  puts "Seed Finished"
  # puts "#{SponsoredPost.count} sponsored posts were created"
  puts "#{User.count} users created"
  puts "#{Topic.count} topics created"
  puts "#{Post.count} posts created"
  puts "#{Comment.count} comments created"
  # puts "#{Advertisement.count} ads were created"
  # puts "#{Question.count} questions were created"
