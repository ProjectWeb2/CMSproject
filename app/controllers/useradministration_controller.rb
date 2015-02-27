class UseradministrationController < ApplicationController
  before_action :set_userdata, only: [:show, :edit,  :destroy]
  def show

  end
  def add
    @user= User.find(params[:user_id])
    @role=Role.find(params[:role_id]).name
    @user.add_role @role
    redirect_to useradministration_path(:id => @user.id)
  end
  def remove
    @user= User.find(params[:user_id])
    @role=Role.find(params[:role_id]).name
    @user.remove_role @role
    redirect_to useradministration_path(:id => @user.id)
  end
  def index
    @users = User.all
  end
  def edit
  end
  private
  # Use callbacks to share common setup or constraints between actions.
  def set_userdata
    @user = User.find(params[:id])
    @rollen= @user.roles
    @rolle= Role.all
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit(:id,:email)
  end
end

