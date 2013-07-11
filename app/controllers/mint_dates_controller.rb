class MintDatesController < ApplicationController

  # Uses mint_id to create a @mint object
  before_filter :get_mint
  

  # GET /mint_dates
  # GET /mint_dates.json
  def index
    @mint_dates = @mint.mint_dates

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @mint_dates }
    end
  end

  # GET /mint_dates/1
  # GET /mint_dates/1.json
  def show
    @mint_date = @mint.mint_dates.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @mint_date }
    end
  end

  # GET /mint_dates/new
  # GET /mint_dates/new.json
  def new
    @mint = Mint.find(params[:mint_id])
    @mint_date = @mint.mint_dates.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @mint_date }
    end
  end

  # GET /mint_dates/1/edit
  def edit
    @mint_date = @mint.mint_dates.find(params[:id])
  end

  # POST /mint_dates
  # POST /mint_dates.json
  def create
    @mint_date = @mint.mint_dates.build(params[:mint_date])

    respond_to do |format|
      if @mint_date.save
        format.html { redirect_to mint_mint_dates_url(@mint), :notice => 'Mint Date was successfully created.' }
        format.json { render :json => @mint_date, :status => :created, :location => @mint_date }
      else
        format.html { render :action => "new" }
        format.json { render :json => @mint_date.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /mint_dates/1
  # PUT /mint_dates/1.json
  def update
    @mint_date = @mint.mint_dates.find(params[:id])

    respond_to do |format|
      if @mint_date.update_attributes(params[:mint_date])
        format.html { redirect_to mint_mint_dates_url, :notice => 'Mint Date was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @mint_date.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /mint_dates/1
  # DELETE /mint_dates/1.json
  def destroy
    @mint_date = @mint.mint_dates.find(params[:id])
    @mint_date.destroy

    respond_to do |format|
      format.html { redirect_to mint_mint_dates_path(@mint) }
      format.json { head :no_content }
    end
  end

  # get_mint converts the mint_id given by routing into 
  # a @mint object, for use here and in the view.
  def get_mint
    @mint = Mint.find(params[:mint_id])
  end
  
end
