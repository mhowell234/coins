class MintsController < ApplicationController
  # GET /mints
  # GET /mints.json
  def index
    @mints = Mint.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @mints }
    end
  end

  # GET /mints/1
  # GET /mints/1.json
  def show
    @mint = Mint.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @mint }
    end
  end

  # GET /mints/new
  # GET /mints/new.json
  def new
    @mint = Mint.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @mint }
    end
  end

  # GET /mints/1/edit
  def edit
    @mint = Mint.find(params[:id])
  end

  # POST /mints
  # POST /mints.json
  def create
    @mint = Mint.new(params[:mint])

    respond_to do |format|
      if @mint.save
        format.html { redirect_to @mint, :notice => 'Mint was successfully created.' }
        format.json { render :json => @mint, :status => :created, :location => @mint }
      else
        format.html { render :action => "new" }
        format.json { render :json => @mint.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /mints/1
  # PUT /mints/1.json
  def update
    @mint = Mint.find(params[:id])

    respond_to do |format|
      if @mint.update_attributes(params[:mint])
        format.html { redirect_to @mint, :notice => 'Mint was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @mint.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /mints/1
  # DELETE /mints/1.json
  def destroy
    @mint = Mint.find(params[:id])
    @mint.destroy

    respond_to do |format|
      format.html { redirect_to mints_url }
      format.json { head :no_content }
    end
  end
  
end