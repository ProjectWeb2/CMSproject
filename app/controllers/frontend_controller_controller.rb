class FrontendControllerController < ApplicationController
  def index
    @menu = Menu.all
    @sites = Site.all
    @typs = Typ.all
    @location = Location.all
  end
end
