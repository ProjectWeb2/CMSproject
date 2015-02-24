class ContentperpagesController < LayoutadminController
  before_action :set_contentperpage, only: [:show, :edit, :update, :destroy]

  # GET /contentperpages
  # GET /contentperpages.json
  def index
    @contentperpages = Contentperpage.all
  end

  # GET /contentperpages/1
  # GET /contentperpages/1.json
  def show
  end

  # GET /contentperpages/new
  def new
    @contentperpage = Contentperpage.new
  end

  # GET /contentperpages/1/edit
  def edit
  end

  # POST /contentperpages
  # POST /contentperpages.json
  def create
    @contentperpage = Contentperpage.new(contentperpage_params)

    respond_to do |format|
      if @contentperpage.save
        format.html { redirect_to @contentperpage, notice: 'Contentperpage was successfully created.' }
        format.json { render :show, status: :created, location: @contentperpage }
      else
        format.html { render :new }
        format.json { render json: @contentperpage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contentperpages/1
  # PATCH/PUT /contentperpages/1.json
  def update
    respond_to do |format|
      if @contentperpage.update(contentperpage_params)
        format.html { redirect_to @contentperpage, notice: 'Contentperpage was successfully updated.' }
        format.json { render :show, status: :ok, location: @contentperpage }
      else
        format.html { render :edit }
        format.json { render json: @contentperpage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contentperpages/1
  # DELETE /contentperpages/1.json
  def destroy
    @contentperpage.destroy
    respond_to do |format|
      format.html { redirect_to contentperpages_url, notice: 'Contentperpage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contentperpage
      @contentperpage = Contentperpage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contentperpage_params
      params.require(:contentperpage).permit(:contentid, :subitemid)
    end
end
