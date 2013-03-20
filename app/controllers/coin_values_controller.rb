class CoinValuesController < ApplicationController
  # GET /coin_values
  # GET /coin_values.json
  def index
    @coin_values = CoinValue.order('coin_values.value DESC, coin_values.name ASC').all
    #@coin_values = CoinValue.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @coin_values }
    end
  end

  # GET /coin_values/1
  # GET /coin_values/1.json
  def show
    @coin_value = CoinValue.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @coin_value }
    end
  end

  # GET /coin_values/new
  # GET /coin_values/new.json
  def new
    @coin_value = CoinValue.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @coin_value }
    end
  end

  # GET /coin_values/1/edit
  def edit
    @coin_value = CoinValue.find(params[:id])
  end

  # POST /coin_values
  # POST /coin_values.json
  def create
    @coin_value = CoinValue.new(params[:coin_value])

    respond_to do |format|
      if @coin_value.save
        format.html { redirect_to @coin_value, :notice => 'Coin value was successfully created.' }
        format.json { render :json => @coin_value, :status => :created, :location => @coin_value }
      else
        format.html { render :action => "new" }
        format.json { render :json => @coin_value.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /coin_values/1
  # PUT /coin_values/1.json
  def update
    @coin_value = CoinValue.find(params[:id])

    respond_to do |format|
      if @coin_value.update_attributes(params[:coin_value])
        format.html { redirect_to @coin_value, :notice => 'Coin value was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @coin_value.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /coin_values/1
  # DELETE /coin_values/1.json
  def destroy
    @coin_value = CoinValue.find(params[:id])
    @coin_value.destroy

    respond_to do |format|
      format.html { redirect_to coin_values_url }
      format.json { head :no_content }
    end
  end
end
