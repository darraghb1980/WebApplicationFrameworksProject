class PrimesController < ApplicationController
  # GET /primes
  # GET /primes.xml
  def index
    @primes = Prime.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @primes }
    end
  end

  # GET /primes/1
  # GET /primes/1.xml
  def show
    @prime = Prime.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @prime }
    end
  end

  # GET /primes/new
  # GET /primes/new.xml
  def new
    @prime = Prime.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @prime }
    end
  end

  # GET /primes/1/edit
  def edit
    @prime = Prime.find(params[:id])
  end

  # POST /primes
  # POST /primes.xml
  def create
    @prime = Prime.new(params[:prime])

    respond_to do |format|
      if @prime.save
        format.html { redirect_to(@prime, :notice => 'Prime was successfully created.') }
        format.xml  { render :xml => @prime, :status => :created, :location => @prime }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @prime.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /primes/1
  # PUT /primes/1.xml
  def update
    @prime = Prime.find(params[:id])

    respond_to do |format|
      if @prime.update_attributes(params[:prime])
        format.html { redirect_to(@prime, :notice => 'Prime was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @prime.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /primes/1
  # DELETE /primes/1.xml
  def destroy
    @prime = Prime.find(params[:id])
    @prime.destroy

    respond_to do |format|
      format.html { redirect_to(primes_url) }
      format.xml  { head :ok }
    end
  end

def isprime
@input1 = params[:search_string]
@result = Checkprime.runcheck(@input1.to_i)
end

end
