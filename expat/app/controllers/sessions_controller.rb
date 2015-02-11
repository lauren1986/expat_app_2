class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    # Find the user by email
    u = User.where(email: params[:user][:email]).first
    if u != nil && u.authenticate(params[:user][:password])
        session["user_id"] = u.id.to_s
        redirect_to new_users_path
    end
  end

  def destroy
    session.destroy
  end
end
