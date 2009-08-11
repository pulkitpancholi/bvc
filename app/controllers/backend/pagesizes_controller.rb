class Backend::PagesizesController < BackendController

  def index
    params[:limit] ||= 50
    
    @column_store = column_store_for Pagesize do |cm|
      cm.add :page_size
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
    @pagesize = Pagesize.new
  end

  def create
    @pagesize = Pagesize.new(params[:pagesize])
    if @pagesize.save
      redirect_parent_to(:action => "edit", :id => @pagesize)
    else
      render_to_parent(:action => "new")
    end
  end

  def edit
    @pagesize = Pagesize.find(params[:id])
  end

  def update
    @pagesize = Pagesize.find(params[:id]) 
    
    if @pagesize.update_attributes(params[:pagesize])
      respond_to do |format|
        format.html { redirect_parent_to(:action => "edit", :id => @pagesize) }
        format.json { render :json => { :success => true } }
      end
    else
      respond_to do |format|
        format.html { render_to_parent(:action => "edit") }
        format.json { render :json => { :success => false, :msg => @pagesize.errors.full_messages.join("<br />") } }
      end
    end
  end
  
  # Add in your model before_destroy and if the callback returns false, 
  # all the later callbacks and the associated action are cancelled.
  def destroy
    if Pagesize.find(params[:id]).destroy
      render :json => { :success => true } 
    else
      render :json => { :success => false, :msg => I18n.t("backend.general.cantDelete") }
    end
  end
end