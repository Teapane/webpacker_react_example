class UsersController < ApplicationController

  def show
    users = User.all
    render status: 200, json: {users: users}
  end
end
