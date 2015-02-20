class ExamplesController < ApplicationController
  before_action :set_content, only: [:show, :edit, :update, :destroy]

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_content
    @content = Content.find(1)
    @vmenu = Menu.where(typ: '2' , location: '1')
    @hmenu = Menu.where(typ: '1' , location: '1')
  end


end
