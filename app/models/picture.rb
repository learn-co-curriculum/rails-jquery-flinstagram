class Picture < ActiveRecord::Base
  belongs_to :user
  has_many :likes

  def user_liked?(user)
    self.likes.any? do |like| 
      like.user_id == user.id 
    end
  end

  def update_likes(user)
    user_liked?(user) ? unlike(user) : like(user)
  end

  def like(user)
    self.likes.create(user_id: user.id)
  end

  def unlike(user)
    self.likes.find_by(user_id: user.id).destroy
  end

  def likes_message(user)
    if user_liked?(user)
      "<strong>You</strong> and <strong>#{self.likes.count - 1} other people</strong> like this image".html_safe
    else
      "<strong>#{self.likes.count} people</strong> like this image".html_safe
    end
  end

end
