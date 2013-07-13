class ValuationsController < ApplicationController

  # Uses mint_coin_id to create @mint_coin object
  before_filter :get_mint_coin


  # GET /valuations
  # GET /valuations.json
  def index
    @valuations = @mint_coin.valuations

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @valuations }
    end
  end

  # GET /valuations/1
  # GET /valuations/1.json
  def show
    @valuation = @mint_coin.valuations.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @valuation }
    end
  end

  # GET /valuations/new
  # GET /valuations/new.json
  def new
    @valuation = @mint_coin.valuations.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @valuation }
    end
  end

  # GET /valuations/1/edit
  def edit
    @valuation = @mint_coin.valuations.find(params[:id])
  end

  # POST /valuations
  # POST /valuations.json
  def create
    @valuation = @mint_coin.valuations.build(params[:valuation])

    respond_to do |format|
      if @valuation.save
        format.html { redirect_to mint_coin_valuations_url([@mint_coin]), :notice => 'Valuation was successfully created.' }
        format.json { render :json => @valuation, :status => :created, :location => @valuation }
      else
        format.html { render :action => "new" }
        format.json { render :json => @valuation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /valuations/1
  # PUT /valuations/1.json
  def update
    @valuation = @mint_coin.valuations.find(params[:id])

    respond_to do |format|
      if @valuation.update_attributes(params[:valuation])
        format.html { redirect_to mint_coin_valuations_url([@mint_coin]), :notice => 'Valuation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @valuation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /valuations/1
  # DELETE /valuations/1.json
  def destroy
    @valuation = @mint_coin.valuations.find(params[:id])
    @valuation.destroy

    respond_to do |format|
      format.html { redirect_to mint_coin_valuations_url([@mint_coin]) }
      format.json { head :no_content }
    end
  end
  
  private
    
  # get_mint_coin converts the mint_coin_id given by routing into 
  # a @mint_coin object, for use here and in the view.
  def get_mint_coin
    @mint_coin = MintCoin.find(params[:mint_coin_id])
  end
  
end
