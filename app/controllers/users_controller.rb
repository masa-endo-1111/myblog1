class UsersController < ApplicationController
  def show
    @bookmarks = Bookmark.where(user_id: current_user.id)
  end
end
