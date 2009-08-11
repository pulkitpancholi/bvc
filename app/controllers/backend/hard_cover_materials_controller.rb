class Backend::HardCoverMaterialsController < BackendController

  def index
    params[:limit] ||= 50
    
    @column_store = column_store_for HardCoverMaterial do |cm|
      cm.add :hard_cover_material_type
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
    @hard_cover_material = HardCoverMaterial.new
  end

  def create
    @hard_cover_material = HardCoverMaterial.new(params[:hard_cover_material])
    if @hard_cover_material.save
      redirect_parent_to(:action => "edit", :id => @hard_cover_material)
    else
      render_to_parent(:action => "new")
    end
  end

  def edit
    @hard_cover_material = HardCoverMaterial.find(params[:id])
  end

  def update
    @hard_cover_material = HardCoverMaterial.find(params[:id]) 
    
    if @hard_cover_material.update_attributes(params[:hard_cover_material])
      respond_to do |format|
        format.html { redirect_parent_to(:action => "edit", :id => @hard_cover_material) }
        format.json { render :json => { :success => true } }
      end
    else
      respond_to do |format|
        format.html { render_to_parent(:action => "edit") }
        format.json { render :json => { :success => false, :msg => @hard_cover_material.errors.full_messages.join("<br />") } }
      end
    end
  end
  
  # Add in your model before_destroy and if the callback returns false, 
  # all the later callbacks and the associated action are cancelled.
  def destroy
    if HardCoverMaterial.find(params[:id]).destroy
      render :json => { :success => true } 
    else
      render :json => { :success => false, :msg => I18n.t("backend.general.cantDelete") }
    end
  end
end