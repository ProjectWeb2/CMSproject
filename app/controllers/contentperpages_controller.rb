class ContentperpagesController < LayoutadminController
  before_action :set_contentperpage, only: [ :create_new,:show, :edit, :update, :destroy]
  before_action :set_id, only: [:index]
  before_action :set_infos, only: [:create_new,:new]

  respond_to :html, :json

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
    @contentperpage.menu_id = @contentperpagemenuid
    @contentperpage.content_id = @contentperpagecontentid
  end

  # GET /contentperpages/1/edit
  def edit
  end
def changesite(uid)
  redirect_to @contentperpage
end

  def create_new(contentidget,menuid)
    @contentperpage=Contentperpage.new
    @contentperpage.menu_id =  menuid
    @contentperpage.content_id = contentidget


      if @contentperpage.save
        self.changesite(@contentperpage)
      else



      end

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
      if @contentperpage.save
        format.html { redirect_to @contentperpage, notice: 'Contentperpage was successfully created.' }
        format.json { render :show, status: :created, location: @contentperpage }
      else
        format.html { render :new }
        format.json { render json: @contentperpage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contentperpages/1
  # DELETE /contentperpages/1.json
  def destroy
    @contentperpagemenuid = @contentperpage.menu_id
    @contentperpage.destroy
    redirect_to contentperpages_path(:menu =>@contentperpagemenuid)

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contentperpage
      @contentperpage = Contentperpage.find(params[:id])
      @contentperpagecontentid = params[:content]
      @contentperpagemenuid = params[:menu]
    end
    def set_id
      @contentperpagecontentid = params[:content]
    @contentperpagemenuid = params[:menu]
    @contentselectet = Contentperpage.where(menu_id:  @contentperpagemenuid)
    @contentobject= self.new
    if @contentselectet.nil?
      @contentnotelectet = Content.all
    else
      @contentnotelectet = Content.where('id not in (?)',@contentselectet.map(&:content_id))
    end
    end

    def set_infos
      @contentperpagemenuid = params[:menu]
      @contentobject= self.new
      @contentperpagecontentid = params[:content]
      @content=Content.find(@contentperpagecontentid)
    end



    # Never trust parameters from the scary internet, only allow the white list through.
    def contentperpage_params
      params.require(:contentperpage).permit(:content_id, :menu_id)
    end
end
