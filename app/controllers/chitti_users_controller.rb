class ChittiUsersController < ApplicationController

  def index
    if params[:id].present?
      @chitti_users = ChittiUser.where(chitti_detail_id: params[:id])
    else
      @chitti_users = ChittiUser.includes(:user)
    end
  end

  def new
    @id = params[:id] if params[:id].present?
    @chitti_user = ChittiUser.new
    get_chitti_and_user_details
  end

  def create
    @chitti_user = ChittiUser.new(user_id: params[:user_id], chitti_detail_id: params[:chitti_detail_id])
    if @chitti_user.save
      redirect_to chitti_users_path, :flash => {:notice => "User Saved Successfully!!"}
    else
      get_chitti_and_user_details
      render 'new'
    end
  end

  def get_chitti_and_user_details
    @chitties = @id.present? ? ChittiDetail.where(id: @id) : ChittiDetail.all
    @users  = User.all
  end

end
