class UsersController < ApplicationController
  def index
    @user = User.new
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new params[:user]
    if @user.save

    else
      render :new
    end
  end

  def update
  end

  def edit
  end

  def destroy
  end

end
