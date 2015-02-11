class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    raise params.inspect
    # Find the user by email
    u = User.where(email: params[:user][:email]).first
    if u != nil && u.authenticate(params[:user][:password])
  end

  def destroy
  end
end
