class CoinsController < ApplicationController

  # Uses coin_value_id to create a @coin_value object
  before_filter :get_coin_value
  
  # GET /coins
  # GET /coins.json
  def index
    @coins = @coin_value.coins

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @coins }
    end
  end

  # GET /coins/1
  # GET /coins/1.json
  def show
    @coin = @coin_value.coins.find(params[:id])

    @mint_coins_by_grouping = mint_coins_by_grouping

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @coin }
    end
  end

  # GET /coins/new
  # GET /coins/new.json
  def new
    @coin_value = CoinValue.find(params[:coin_value_id])
    @coin = @coin_value.coins.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @coin }
    end
  end

  # GET /coins/1/edit
  def edit
    @coin = @coin_value.coins.find(params[:id])
  end

  # POST /coins
  # POST /coins.json
  def create
    @coin = @coin_value.coins.build(params[:coin])

    respond_to do |format|
      if @coin.save
        format.html { redirect_to coin_value_coins_url(@coin_value), :notice => 'Coin was successfully created.' }
        format.json { render :json => @coin, :status => :created, :location => @coin }
      else
        format.html { render :action => "new" }
        format.json { render :json => @coin.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /coins/1
  # PUT /coins/1.json
  def update
    @coin = @coin_value.coins.find(params[:id])

    respond_to do |format|
      if @coin.update_attributes(params[:coin])
        format.html { redirect_to coin_value_coins_url, :notice => 'Coin was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @coin.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /coins/1
  # DELETE /coins/1.json
  def destroy
    @coin = @coin_value.coins.find(params[:id])
    @coin.destroy

    respond_to do |format|
      format.html { redirect_to coin_value_coins_path(@coin_value) }
      format.json { head :no_content }
    end
  end
  
  
  private
  
  def mint_coins_by_grouping
    grouping = Array.new
    
    grouping_hash = Hash.new
    grouping_hash['title'] = ''
    grouping_hash['mint_coins'] = Array.new
    
    @coin.mint_coins.each do |mint_coin|
      if mint_coin.year_grouping != grouping_hash['title'] then
        if grouping_hash['mint_coins'].length > 0 then
          grouping << grouping_hash
        end
        
        grouping_hash = Hash.new
        grouping_hash['title'] = mint_coin.year_grouping
        grouping_hash['mint_coins'] = Array.new
      end
     
      grouping_hash['mint_coins'] << mint_coin        
    end
    
    if grouping_hash['mint_coins'].length > 0 then
      grouping << grouping_hash
    end
    
    return grouping
  end
  
  # get_coin_value converts the coin_value_id given by routing into 
  # a @coin_value object, for use here and in the view.
  def get_coin_value
    @coin_value = CoinValue.find(params[:coin_value_id])
  end
  
  
end
