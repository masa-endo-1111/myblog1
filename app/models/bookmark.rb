class Bookmark < ApplicationRecord
  belongs_to :user
  belongs_to :post
  user_id, uniqueness: { scope: :post_id}
end
