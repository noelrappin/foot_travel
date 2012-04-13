class UsersController < ApplicationController
  respond_to :html

  def index
    @friends = Presenters::FriendPresenter.new(User.all, current_user)
    respond_with(@friends)
  end

end