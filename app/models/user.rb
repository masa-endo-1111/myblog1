class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :comments, dependent: :destroy
  has_many :bookmarks
  has_many :posts, through: :bookmarks
  has_many :likes, dependent: :destroy
  has_many :like_posts, through: :likes, source: :post
end
