class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :set_before_values


  private
  # Use callbacks to share common setup or constraints between actions.
  def set_before_values
    @contenttolink = Content.find(1)
    @vmenu = Menu.where(typ: '2' , location: '1')
    @hmenu = Menu.where(typ: '1' , location: '1')
  end


end
