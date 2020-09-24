class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :bookmarks, dependent: :destroy
  has_many :users, through: :bookmarks
  has_many :likes, dependent: :destroy
  has_many :like_users, through: :likes, source: :user

  def bookmarked_by?(user)
    bookmarks.where(user_id: user).exists?
  end

  def liked_by?(user)
    likes.where(user_id: user).exists?
  end

end
