module UsersHelper
  #create helper method to determine if a user has any posts or comments
  #does user have any posts?
  def detects_if_user_has_posts(user)
    if user.posts.count == 0
      "#{user.name} hasn't written any posts."
    else
      pluralize(user.posts.count, 'post')
    end
  end


  def detects_if_user_has_comments(user)
    if user.comments.count == 0
      "#{user.name} doesn't have any comments"
    else
      pluralize(user.comments.count, 'comment')
    end
  end

end
