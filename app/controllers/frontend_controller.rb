class FrontendController < ApplicationController
 before_action :set_content, only: :show
  def show
  end

  def index

  end
  private
  # Use callbacks to share common setup or constraints between actions.
  def set_content
    @content = Contentperpage.where(menu_id: params[:id])

    end

  # Never trust parameters from the scary internet, only allow the white list through.
  def content_params
    params.require(:content).permit(:text)
  end
end
