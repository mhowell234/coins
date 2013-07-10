class YearCoinsController < ApplicationController

  # Uses coin_value_id to create @coin_value and @coin objects
  before_filter :get_coin_value_and_coin


  # GET /year_coins
  # GET /year_coins.json
  def index
    @year_coins = @coin.year_coins

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @coins }
    end
  end

  # GET /year_coins/1
  # GET /year_coins/1.json
  def show
    @year_coin = @coin.year_coins.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @year_coin }
    end
  end

  # GET /year_coins/new
  # GET /year_coins/new.json
  def new
    @coin = Coin.find(params[:coin_id])
    @year_coin = @coin.year_coins.build

    @year_coin.is_silver = 0
    @year_coin.is_gold = 0

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @year_coin }
    end
  end

  # GET /year_coins/1/edit
  def edit
    @year_coin = @coin.year_coins.find(params[:id])
  end

  # POST /year_coins
  # POST /year_coins.json
  def create

    @year_coin = YearCoin.new(params[:year_coin])

    respond_to do |format|
      if @year_coin.save
        format.html { redirect_to @year_coin, :notice => 'Year coin was successfully created.' }
        format.json { render :json => @year_coin, :status => :created, :location => @year_coin }
      else
        format.html { render :action => "new" }
        format.json { render :json => @year_coin.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /year_coins/1
  # PUT /year_coins/1.json
  def update
    @year_coin = YearCoin.find(params[:id])

    respond_to do |format|
      if @year_coin.update_attributes(params[:year_coin])
        format.html { redirect_to @year_coin, :notice => 'Year coin was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @year_coin.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /year_coins/1
  # DELETE /year_coins/1.json
  def destroy
    @year_coin = YearCoin.find(params[:id])
    @year_coin.destroy

    respond_to do |format|
      format.html { redirect_to year_coins_url }
      format.json { head :no_content }
    end
  end

  
  private
  
  # get_coin_value_and_coin converts the coin_value_id given by routing into 
  # a @coin_value object, for use here and in the view.
  def get_coin_value_and_coin
    @coin_value = CoinValue.find(params[:coin_value_id])
    @coin = @coin_value.coins.find(params[:coin_id])
  end

end
