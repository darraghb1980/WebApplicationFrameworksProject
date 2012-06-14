class OwnersController < ApplicationController
  # GET /owners
  # GET /owners.xml
  def index
    @owners = Owner.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @owners }
    end
  end

  # GET /owners/1
  # GET /owners/1.xml
  def show
    @owner = Owner.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @owner }
    end
  end

  # GET /owners/new
  # GET /owners/new.xml
  def new
    @owner = Owner.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @owner }
    end
  end

  # GET /owners/1/edit
  def edit
    @owner = Owner.find(params[:id])
  end

  # POST /owners
  # POST /owners.xml
  def create
    @owner = Owner.new(params[:owner])

    respond_to do |format|
      if @owner.save
        format.html { redirect_to(@owner, :notice => 'Owner was successfully created.') }
        format.xml  { render :xml => @owner, :status => :created, :location => @owner }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @owner.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /owners/1
  # PUT /owners/1.xml
  def update
    @owner = Owner.find(params[:id])

    respond_to do |format|
      if @owner.update_attributes(params[:owner])
        format.html { redirect_to(@owner, :notice => 'Owner was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @owner.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /owners/1
  # DELETE /owners/1.xml
  def destroy
    @owner = Owner.find(params[:id])
    @owner.destroy

    respond_to do |format|
      format.html { redirect_to(owners_url) }
      format.xml  { head :ok }
    end
  end

# Voting Page: This code takes the units who don't have "Default" as their payment status of their mgmt fee, and displays them in a list
#as units that are eligible to vote, and another list of those who have "Default" and displays them in a separate list as those 
#eligible to vote.
	def voting
		@paidunits = Unit.find(:all,:conditions=>["status!='Default'"])
		@unpaidunits = Unit.find(:all,:conditions=>["status=='Default'"])
		@eligibleunits = Array.new
		@eligibleowners = Array.new
		@uneligibleowners = Array.new
		@paidunits.each do |unit|
		@eligibleunits << unit
		@eligibleowners << unit.owner
		end
		@unpaidunits.each do |unit|
		@uneligibleowners << unit.owner
		end
		#uniq! removes any duplicates
		@uneligibleowners.uniq!
		@eligibleunits.uniq!
		@eligibleowners.uniq!
	end
end
