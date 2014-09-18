class Picture < ActiveRecord::Base
  belongs_to :user
  has_many :likes

  def update_likes(user)
    user_liked?(user) ? unlike(user) : like(user)
  end

  def likes_message(user)
    if ajax_fail || !user_liked?(user)
      "<strong>#{self.likes.count} people</strong> like this image".html_safe
    else
      "<strong>You</strong> and <strong>#{self.likes.count - 1} other people</strong> like this image".html_safe
    end
  end

  def heart_class(user)
    if user_liked?(user)
      "glyphicon glyphicon-heart red-heart"
    else
      "glyphicon glyphicon-heart grey-heart"
    end
  end

  private

      def user_liked?(user)
        self.likes.any? do |like| 
          like.user_id == user.id 
        end
      end

      def like(user)
        self.likes.create(user_id: user.id)
      end

      def unlike(user)
        self.likes.find_by(user_id: user.id).destroy
      end

      def ajax_fail
        # fixes error that occurs when user_liked? is called with ajax
        self.likes.count != self.likes.length
      end

end
