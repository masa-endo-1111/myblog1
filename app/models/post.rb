class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :bookmarks
  has_many :users, through: :bookmarks

  def bookmarked_by?(user)
    bookmarks.where(user_id: user).exists?
  end

end
