class LayoutadminController < ApplicationController
  layout "application"

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_before_values

    @vmenu = Menu.where(typ: '2' , location: '2')

  end
end
