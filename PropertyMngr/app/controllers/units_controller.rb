class UnitsController < ApplicationController
  # GET /units
  # GET /units.xml
  def index
   
@development= Development.find(params[:development_id]) 
@units = @development.units
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @units }
    end
  end

  # GET /units/1
  # GET /units/1.xml
  def show
    @unit = Unit.find(params[:id])
@development = Development.find(params[:development_id])
	

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @unit }
    end
  end

  # GET /units/new
  # GET /units/new.xml
  def new
    @unit = Unit.new

	#code added	
	@development= Development.find(params[:development_id])

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @unit }
    end
  end

  # GET /units/1/edit
  def edit
    @unit = Unit.find(params[:id])
	@development= Development.find(params[:development_id])
  end

  # POST /units
  # POST /units.xml
  def create
    @unit = Unit.new(params[:unit])

	#code added
	@unit.development = Development.find(params[:development_id])

    respond_to do |format|
      if @unit.save
        format.html { redirect_to(development_path(@unit.development), :notice => 'Unit was successfully created.') }
        format.xml  { render :xml => @unit, :status => :created, :location => @unit }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @unit.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /units/1
  # PUT /units/1.xml
  def update
    @unit = Unit.find(params[:id])

    respond_to do |format|
      if @unit.update_attributes(params[:unit])
        format.html { redirect_to(development_path(@unit.development), :notice => 'Unit was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @unit.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /units/1
  # DELETE /units/1.xml
  def destroy
    @unit = Unit.find(params[:id])
    @unit.destroy

@development= Development.find(params[:development_id])

    respond_to do |format|
      format.html { redirect_to(development_path(@development)) }
      format.xml  { head :ok }
    end
  end

#gmaps 
def map
   @json = Unit.all.to_gmaps4rails
end
end
