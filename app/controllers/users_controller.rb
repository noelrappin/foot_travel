class UsersController < ApplicationController
  respond_to :html

  def index
    @friends = FriendPresenter.new(User.all, current_user)
    respond_with(@friends)
  end

end