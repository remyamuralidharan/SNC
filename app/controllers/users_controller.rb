class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      p "user saved"
      flash[:notice] = "User Saved Successfully"
      redirect_to root_path

    else
      render 'new', :flash => { :error => @user.errors.full_messages.to_sentence }
    end
  end

  def index
    @users = User.all
  end

  private

  def user_params
    params.require(:user).permit(:name, :house_name, :place, :city, :mob_no, :email, :password)
  end

end
