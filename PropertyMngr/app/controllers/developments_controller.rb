class DevelopmentsController < ApplicationController
  # GET /developments
  # GET /developments.xml
  def index
    @developments = Development.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @developments }
    end
  end

  # GET /developments/1
  # GET /developments/1.xml
  def show
    @development = Development.find(params[:id])

	@units = @development.units

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @development }
    end
  end

  # GET /developments/new
  # GET /developments/new.xml
  def new
    @development = Development.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @development }
    end
  end

  # GET /developments/1/edit
  def edit
    @development = Development.find(params[:id])
  end

  # POST /developments
  # POST /developments.xml
  def create
    @development = Development.new(params[:development])

    respond_to do |format|
      if @development.save
        format.html { redirect_to(@development, :notice => 'Development was successfully created.') }
        format.xml  { render :xml => @development, :status => :created, :location => @development }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @development.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /developments/1
  # PUT /developments/1.xml
  def update
    @development = Development.find(params[:id])

    respond_to do |format|
      if @development.update_attributes(params[:development])
        format.html { redirect_to(@development, :notice => 'Development was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @development.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /developments/1
  # DELETE /developments/1.xml
  def destroy
    @development = Development.find(params[:id])
    @development.destroy

    respond_to do |format|
      format.html { redirect_to(developments_url) }
      format.xml  { head :ok }
    end
  end

	#added this code to show the development's units
	def showunit
		@development = Development.find(params[:id])
		@units = @development.unit
		respond_to do |format|
		format.html # show.html.erb
		format.xml { render :xml => @development }
		end
	end

	#added this to show owners
	def showowners
		@development = Development.find(params[:id])
		@owner = @development.owner

		respond_to do |format|
		format.html
		format.xml {render :xml => @development}
		end
	end

#this class is for the hardcoded details on the About Page
def about
end

#this class is for the hardcoded details on the About Page
def contact
end

end
