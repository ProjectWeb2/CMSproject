class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :set_before_valuesall


  private
  # Use callbacks to share common setup or constraints between actions.
  def set_before_valuesall
    @layoutme = 0

    if user_signed_in?
      if current_user.id == 1
        current_user.add_role(:admin)
      end
      end
    @vmenu = Menu.where(typ_id: '2' , location_id: '2')
    @hmenu = Menu.where(typ_id: '1' , location_id: '2')

  end


end
