class LayoutadminController < ApplicationController
  layout "adminlayout"
  before_action :auto_user
  before_action :authenticate_user

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_before_values

    @vmenu = Menu.where(typ: '2' , location: '2')

  end
  def auto_user

    if current_user.has_role? :admin
    else
      redirect_to frontend_path
    end
  end
end
