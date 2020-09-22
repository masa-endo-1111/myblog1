class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :bookmarks
  has_many :users, through: :bookmarks

end
