class OrdersController < ApplicationController
  
  before_filter :find_order, :except => :index

  def index
  end

  def step1
  end
  
  def step2    
    @papertype = Papertype.all
    
    @colorful_papertypes = Papertype.find(:all, :conditions => {:colorful => true})
    @colorful_papertypes_ids = []
    return unless request.post?

    if @order.update_attributes(params[:order])
      session[:order_id] = @order.id
      flash[:notice] = "Saved successfully"
    else
      render :action => "step1"
    end
  end
  
  def step3
    @foldings = Folding.all
    @folding_ids = []
    
    @staplings = Stapling.all
    @stapling_ids = []
    
    @binds = Bind.all
    @bind_ids = []
    
    @hard_back_covers = HardBackCover.all
    @hard_back_cover_ids = []
    return unless request.post?

    params[:order][:color_copy] = (params[:order][:color_copy] == "yes")?true:false
    params[:order][:single_sided] = (params[:order][:single_sided] == "yes")?true:false

    if @order.update_attributes(params[:order])
      flash[:notice] = "Saved successfully"
    else
      render :action => "step2"
    end
  end
  
  def job_summary    
    @order
    return unless request.post?    
    params[:order][:collation] = (params[:order][:collation] == "yes")?true:false
    params[:order][:hard_front_cover] = (params[:order][:hard_front_cover] == "yes")?true:false    

    if @order.update_attributes(params[:order])
      flash[:notice] = "Saved successfully"
    else
      render :action => "index"
    end
  end
  
private
  
  def find_order		    
    @order = (session[:order_id].nil?)?(Order.new):(Order.find(session[:order_id]))
  end
  
end
