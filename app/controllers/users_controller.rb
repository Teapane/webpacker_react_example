class UsersController < ApplicationController

  def index
    users = User.all
    render status: 200, json: {users: users}
  end

  def show
    user = User.find_by(id: params[:id])
    render status: 200, json: {user: user}
  end
end
