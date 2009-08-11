class Backend::ColorsController < BackendController

  def index
    params[:limit] ||= 50
    
    @column_store = column_store_for Color do |cm|
      cm.add :color_name
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
    @color = Color.new
  end

  def create
    @color = Color.new(params[:color])
    if @color.save
      redirect_parent_to(:action => "edit", :id => @color)
    else
      render_to_parent(:action => "new")
    end
  end

  def edit
    @color = Color.find(params[:id])
  end

  def update
    @color = Color.find(params[:id]) 
    
    if @color.update_attributes(params[:color])
      respond_to do |format|
        format.html { redirect_parent_to(:action => "edit", :id => @color) }
        format.json { render :json => { :success => true } }
      end
    else
      respond_to do |format|
        format.html { render_to_parent(:action => "edit") }
        format.json { render :json => { :success => false, :msg => @color.errors.full_messages.join("<br />") } }
      end
    end
  end
  
  # Add in your model before_destroy and if the callback returns false, 
  # all the later callbacks and the associated action are cancelled.
  def destroy
    if Color.find(params[:id]).destroy
      render :json => { :success => true } 
    else
      render :json => { :success => false, :msg => I18n.t("backend.general.cantDelete") }
    end
  end
end