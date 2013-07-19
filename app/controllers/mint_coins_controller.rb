class MintCoinsController < ApplicationController

  # Uses coin_value_id to create @coin object
  before_filter :get_coin


  # GET /mint_coins
  # GET /mint_coins.json
  def index
    @mint_coins = @coin.mint_coins

    @mint_coins_by_grouping = group_mint_coins(@mint_coins)


    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @mint_coins }
    end
  end

  # GET /mint_coins/1
  # GET /mint_coins/1.json
  def show
    @mint_coin = @coin.mint_coins.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @mint_coin }
    end
  end

  # GET /mint_coins/new
  # GET /mint_coins/new.json
  def new
    @mint_coin = @coin.mint_coins.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @mint_coin }
    end
  end

  # GET /mint_coins/1/edit
  def edit
    @mint_coin = @coin.mint_coins.find(params[:id])
  end

  # POST /mint_coins
  # POST /mint_coins.json
  def create
    @mint_coin = @coin.mint_coins.build(params[:mint_coin])
  
    respond_to do |format|
      if @mint_coin.save
        format.html { redirect_to coin_mint_coins_url([@coin]), :notice => 'Mint coin was successfully created.' }
        format.json { render :json => @mint_coin, :status => :created, :location => @mint_coin }
      else
        format.html { render :action => "new" }
        format.json { render :json => @mint_coin.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /mint_coins/1
  # PUT /mint_coins/1.json
  def update
    @mint_coin = @coin.mint_coins.find(params[:id])

    respond_to do |format|
      if @mint_coin.update_attributes(params[:mint_coin])
        format.html { redirect_to coin_mint_coins_url([@coin]), :notice => 'Mint coin was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @mint_coin.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /mint_coins/1
  # DELETE /mint_coins/1.json
  def destroy
    @mint_coin = @coin.mint_coins.find(params[:id])
    @mint_coin.destroy

    respond_to do |format|
      format.html { redirect_to coin_mint_coins_url([@coin]) }
      format.json { head :no_content }
    end
  end
  
  private

  # get_coin converts the coin_id given by routing into 
  # a @coin object, for use here and in the view.
  def get_coin
    @coin = Coin.find(params[:coin_id])
  end

  
end
