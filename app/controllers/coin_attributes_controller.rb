class CoinAttributesController < ApplicationController
  # GET /coin_attributes
  # GET /coin_attributes.json
  def index
    @coin_attributes = CoinAttribute.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @coin_attributes }
    end
  end

  # GET /coin_attributes/1
  # GET /coin_attributes/1.json
  def show
    @coin_attribute = CoinAttribute.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @coin_attribute }
    end
  end

  # GET /coin_attributes/new
  # GET /coin_attributes/new.json
  def new
    @coin_attribute = CoinAttribute.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @coin_attribute }
    end
  end

  # GET /coin_attributes/1/edit
  def edit
    @coin_attribute = CoinAttribute.find(params[:id])
  end

  # POST /coin_attributes
  # POST /coin_attributes.json
  def create
    @coin_attribute = CoinAttribute.new(params[:coin_attribute])

    respond_to do |format|
      if @coin_attribute.save
        format.html { redirect_to @coin_attribute, :notice => 'Coin attribute was successfully created.' }
        format.json { render :json => @coin_attribute, :status => :created, :location => @coin_attribute }
      else
        format.html { render :action => "new" }
        format.json { render :json => @coin_attribute.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /coin_attributes/1
  # PUT /coin_attributes/1.json
  def update
    @coin_attribute = CoinAttribute.find(params[:id])

    respond_to do |format|
      if @coin_attribute.update_attributes(params[:coin_attribute])
        format.html { redirect_to @coin_attribute, :notice => 'Coin attribute was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @coin_attribute.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /coin_attributes/1
  # DELETE /coin_attributes/1.json
  def destroy
    @coin_attribute = CoinAttribute.find(params[:id])
    @coin_attribute.destroy

    respond_to do |format|
      format.html { redirect_to coin_attributes_url }
      format.json { head :no_content }
    end
  end
end
