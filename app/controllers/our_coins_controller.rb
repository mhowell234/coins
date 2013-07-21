class OurCoinsController < ApplicationController
  # GET /our_coins
  # GET /our_coins.json
  def index
    @our_coins = OurCoin.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @our_coins }
    end
  end

  # GET /our_coins/1
  # GET /our_coins/1.json
  def show
    @our_coin = OurCoin.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @our_coin }
    end
  end

  # GET /our_coins/new
  # GET /our_coins/new.json
  def new
    @our_coin = OurCoin.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @our_coin }
    end
  end

  # GET /our_coins/1/edit
  def edit
    @our_coin = OurCoin.find(params[:id])
  end

  # POST /our_coins
  # POST /our_coins.json
  def create
    @our_coin = OurCoin.new(params[:our_coin])

    respond_to do |format|
      if @our_coin.save
        format.html { redirect_to @our_coin, :notice => 'Our coin was successfully created.' }
        format.json { render :json => @our_coin, :status => :created, :location => @our_coin }
      else
        format.html { render :action => "new" }
        format.json { render :json => @our_coin.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /our_coins/1
  # PUT /our_coins/1.json
  def update
    @our_coin = OurCoin.find(params[:id])

    respond_to do |format|
      if @our_coin.update_attributes(params[:our_coin])
        format.html { redirect_to @our_coin, :notice => 'Our coin was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @our_coin.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /our_coins/1
  # DELETE /our_coins/1.json
  def destroy
    @our_coin = OurCoin.find(params[:id])
    @our_coin.destroy

    respond_to do |format|
      format.html { redirect_to our_coins_url }
      format.json { head :no_content }
    end
  end
end
