class UsersController < ApplicationController

  def index
    @users = User.all unless params[:identity]
    @users ||= Identity.find_by(name: params[:identity]).users
  end

end
