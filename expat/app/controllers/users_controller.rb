class UsersController < ApplicationController
  def index
    @user = User.all
  end

  def create
    user = User.new(params.require(:user).permit(:email, :image))
    if user.save
      redirect_to users_path
    end
  end

  def new
      @user = User.new
  end

  def show
  end

  def update
  end

  def edit
  end

  def delete
  end
end
