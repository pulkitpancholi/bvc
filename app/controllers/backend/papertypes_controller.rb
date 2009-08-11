class Backend::PapertypesController < BackendController

  def index
    params[:limit] ||= 50
    
    @column_store = column_store_for Papertype do |cm|
      cm.add :paper_type
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
    @papertype = Papertype.new
  end

  def create
    @papertype = Papertype.new(params[:papertype])
    if @papertype.save
      redirect_parent_to(:action => "edit", :id => @papertype)
    else
      render_to_parent(:action => "new")
    end
  end

  def edit
    @papertype = Papertype.find(params[:id])
  end

  def update
    @papertype = Papertype.find(params[:id]) 
    
    if @papertype.update_attributes(params[:papertype])
      respond_to do |format|
        format.html { redirect_parent_to(:action => "edit", :id => @papertype) }
        format.json { render :json => { :success => true } }
      end
    else
      respond_to do |format|
        format.html { render_to_parent(:action => "edit") }
        format.json { render :json => { :success => false, :msg => @papertype.errors.full_messages.join("<br />") } }
      end
    end
  end
  
  # Add in your model before_destroy and if the callback returns false, 
  # all the later callbacks and the associated action are cancelled.
  def destroy
    if Papertype.find(params[:id]).destroy
      render :json => { :success => true } 
    else
      render :json => { :success => false, :msg => I18n.t("backend.general.cantDelete") }
    end
  end
end