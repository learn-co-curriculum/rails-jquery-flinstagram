class Picture < ActiveRecord::Base
  belongs_to :user
  has_many :likes

  def like(user)
    self.likes.build(user_id: user.id)
    self.save
  end

  def unlike(user)
    self.likes.find_by(user_id: user.id).destroy
    self.save
  end

end
