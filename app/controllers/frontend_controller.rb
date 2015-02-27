class FrontendController < ApplicationController
 before_action :set_content, only: :show
 before_action :set_before_values
  def show
  end

  def index

  end
 def image

 end
  private
  # Use callbacks to share common setup or constraints between actions.
  def set_content
    @content = Contentperpage.where(menu_id: params[:menu])

    end
 def set_before_values
   if user_signed_in?
     if current_user.email == 'admin'
       user = User.find(1)
       user.add_role :admin
     end
    end
   @layoutme = 0
   @vmenu = Menu.where(typ: '2' , location: '2')
   @hmenu = Menu.where(typ: '1' , location: '2')
    @images=Image.all
 end
  # Never trust parameters from the scary internet, only allow the white list through.
  def content_params
    params.require(:content).permit(:text)
  end
end
