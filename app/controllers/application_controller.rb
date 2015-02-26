class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :set_before_values


  private
  # Use callbacks to share common setup or constraints between actions.
  def set_before_values

    @vmenu = Menu.where(typ_id: '2' , location_id: '1')
    @hmenu = Menu.where(typ_id: '1' , location_id: '1')

  end


end
