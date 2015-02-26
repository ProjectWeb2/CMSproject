class MenusController < ActionController::Base
before_action :set_menu, only: [:show, :edit, :update, :destroy]
before_action :set_typlocation, only: [:index]
helper_method :up

  # GET /menus
  # GET /menus.json
  def index
    @menus = Menu.all
  end

  # GET /menus/1
  # GET /menus/1.json
  def show
  end

  # GET /menus/new
  def new
    @menu = Menu.new

  end

  # GET /menus/1/edit
  def edit

  end
  def up
    @menu = Menu.find(13)
    if Menu.exists?(typ_id: @menu.typ_id,location_id: @menu.location_id,order:@menu.order.to_i + 1)

     @menu2 = Menu.where(typ_id: @menu.typ_id,location_id: @menu.location_id,order:@menu.order.to_i + 1).first
      @menu.order = @menu.order.to_i + 1
     @menu.save
    @menu2.order = @menu2.order.to_i - 1
           @menu2.save



      end
  end

  # POST /menus
  # POST /menus.json
  def create
    @menu = Menu.new(menu_params)
    if Menu.where(typ_id: @menu.typ_id,location_id: @menu.location_id).any?
    @menu.order = Menu.where(typ_id: @menu.typ_id,location_id: @menu.location_id).order(order: :desc).first.order.to_i + 1
    else
      @menu.order = 1
      end
    respond_to do |format|
      if @menu.save
        format.html { redirect_to @menu, notice: 'Menu was successfully created.' }
        format.json { render :show, status: :created, location: @menu }
      else
        format.html { render :new }
        format.json { render json: @menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /menus/1
  # PATCH/PUT /menus/1.json
  def update
    respond_to do |format|
      if @menu.update(menu_params)
        format.html { redirect_to @menu, notice: 'Menu was successfully updated.' }
        format.json { render :show, status: :ok, location: @menu }
      else
        format.html { render :edit }
        format.json { render json: @menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /menus/1
  # DELETE /menus/1.json
  def destroy
    @menu.destroy
    respond_to do |format|
      format.html { redirect_to menus_url, notice: 'Menu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_menu
      @menu = Menu.find(params[:id])
      @locations = Location.all
      @typsall = Typ.all
    end
    def set_typlocation
      @locations = Location.all
      @typsall = Typ.all

    end


    # Never trust parameters from the scary internet, only allow the white list through.
    def menu_params

    end
end
