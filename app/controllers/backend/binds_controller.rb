class Backend::BindsController < BackendController

  def index
    params[:limit] ||= 50
    
    @column_store = column_store_for Bind do |cm|
      cm.add :bind_type
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
    @bind = Bind.new
  end

  def create
    @bind = Bind.new(params[:bind])
    if @bind.save
      redirect_parent_to(:action => "edit", :id => @bind)
    else
      render_to_parent(:action => "new")
    end
  end

  def edit
    @bind = Bind.find(params[:id])
  end

  def update
    @bind = Bind.find(params[:id]) 
    
    if @bind.update_attributes(params[:bind])
      respond_to do |format|
        format.html { redirect_parent_to(:action => "edit", :id => @bind) }
        format.json { render :json => { :success => true } }
      end
    else
      respond_to do |format|
        format.html { render_to_parent(:action => "edit") }
        format.json { render :json => { :success => false, :msg => @bind.errors.full_messages.join("<br />") } }
      end
    end
  end
  
  # Add in your model before_destroy and if the callback returns false, 
  # all the later callbacks and the associated action are cancelled.
  def destroy
    if Bind.find(params[:id]).destroy
      render :json => { :success => true } 
    else
      render :json => { :success => false, :msg => I18n.t("backend.general.cantDelete") }
    end
  end
end