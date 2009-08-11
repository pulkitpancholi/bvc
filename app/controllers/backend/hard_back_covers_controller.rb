class Backend::HardBackCoversController < BackendController

  def index
    params[:limit] ||= 50
    
    @column_store = column_store_for HardBackCover do |cm|
      cm.add :hard_back_cover_type
      cm.add :created_at, :renderer => :datetime 
      cm.add :updated_at, :renderer => :datetime 
    end
    
    respond_to do |format|
      format.js 
      format.json do
        render :json => @column_store.store_data(params)
      end
    end
  end

  
  def new
    @hard_back_cover = HardBackCover.new
  end

  def create
    @hard_back_cover = HardBackCover.new(params[:hard_back_cover])
    if @hard_back_cover.save
      redirect_parent_to(:action => "edit", :id => @hard_back_cover)
    else
      render_to_parent(:action => "new")
    end
  end

  def edit
    @hard_back_cover = HardBackCover.find(params[:id])
  end

  def update
    @hard_back_cover = HardBackCover.find(params[:id]) 
    
    if @hard_back_cover.update_attributes(params[:hard_back_cover])
      respond_to do |format|
        format.html { redirect_parent_to(:action => "edit", :id => @hard_back_cover) }
        format.json { render :json => { :success => true } }
      end
    else
      respond_to do |format|
        format.html { render_to_parent(:action => "edit") }
        format.json { render :json => { :success => false, :msg => @hard_back_cover.errors.full_messages.join("<br />") } }
      end
    end
  end
  
  # Add in your model before_destroy and if the callback returns false, 
  # all the later callbacks and the associated action are cancelled.
  def destroy
    if HardBackCover.find(params[:id]).destroy
      render :json => { :success => true } 
    else
      render :json => { :success => false, :msg => I18n.t("backend.general.cantDelete") }
    end
  end
end