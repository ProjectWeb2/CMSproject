class TypsController < ApplicationController
  before_action :set_typ, only: [:show, :edit, :update, :destroy]

  # GET /typs
  # GET /typs.json
  def index
    @typs = Typ.all
  end

  # GET /typs/1
  # GET /typs/1.json
  def show
  end

  # GET /typs/new
  def new
    @typ = Typ.new
  end

  # GET /typs/1/edit
  def edit
  end

  # POST /typs
  # POST /typs.json
  def create
    @typ = Typ.new(typ_params)

    respond_to do |format|
      if @typ.save
        format.html { redirect_to @typ, notice: 'Typ was successfully created.' }
        format.json { render :show, status: :created, location: @typ }
      else
        format.html { render :new }
        format.json { render json: @typ.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /typs/1
  # PATCH/PUT /typs/1.json
  def update
    respond_to do |format|
      if @typ.update(typ_params)
        format.html { redirect_to @typ, notice: 'Typ was successfully updated.' }
        format.json { render :show, status: :ok, location: @typ }
      else
        format.html { render :edit }
        format.json { render json: @typ.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /typs/1
  # DELETE /typs/1.json
  def destroy
    @typ.destroy
    respond_to do |format|
      format.html { redirect_to typs_url, notice: 'Typ was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_typ
      @typ = Typ.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def typ_params
      params.require(:typ).permit(:discription)
    end
end
