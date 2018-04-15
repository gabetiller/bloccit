module UsersHelper
  #create helper method to determine if a user has any posts or comments
  #does user have any posts?
  def user_has_posts?(user)
    user.posts.count > 0
  end


def user_has_comments?(user)
     user.comments.count > 0
  end

end
