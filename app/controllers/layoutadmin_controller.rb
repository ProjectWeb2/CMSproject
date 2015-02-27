class LayoutadminController < ApplicationController
  before_action :auto_user
  before_action :set_layout


  private
  # Use callbacks to share common setup or constraints between actions.
  def set_layout
      @layoutme = 1
  end
  def auto_user
    if user_signed_in?
      if current_user.has_role? :admin
      else
        redirect_to frontend_path
      end

    else
      redirect_to frontend_path
    end
  end
end
