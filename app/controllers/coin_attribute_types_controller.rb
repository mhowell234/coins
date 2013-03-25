class CoinAttributeTypesController < ApplicationController
  # GET /coin_attribute_types
  # GET /coin_attribute_types.json
  def index
    @coin_attribute_types = CoinAttributeType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @coin_attribute_types }
    end
  end

  # GET /coin_attribute_types/1
  # GET /coin_attribute_types/1.json
  def show
    @coin_attribute_type = CoinAttributeType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @coin_attribute_type }
    end
  end

  # GET /coin_attribute_types/new
  # GET /coin_attribute_types/new.json
  def new
    @coin_attribute_type = CoinAttributeType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @coin_attribute_type }
    end
  end

  # GET /coin_attribute_types/1/edit
  def edit
    @coin_attribute_type = CoinAttributeType.find(params[:id])
  end

  # POST /coin_attribute_types
  # POST /coin_attribute_types.json
  def create
    @coin_attribute_type = CoinAttributeType.new(params[:coin_attribute_type])

    respond_to do |format|
      if @coin_attribute_type.save
        format.html { redirect_to @coin_attribute_type, :notice => 'Coin attribute type was successfully created.' }
        format.json { render :json => @coin_attribute_type, :status => :created, :location => @coin_attribute_type }
      else
        format.html { render :action => "new" }
        format.json { render :json => @coin_attribute_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /coin_attribute_types/1
  # PUT /coin_attribute_types/1.json
  def update
    @coin_attribute_type = CoinAttributeType.find(params[:id])

    respond_to do |format|
      if @coin_attribute_type.update_attributes(params[:coin_attribute_type])
        format.html { redirect_to @coin_attribute_type, :notice => 'Coin attribute type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @coin_attribute_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /coin_attribute_types/1
  # DELETE /coin_attribute_types/1.json
  def destroy
    @coin_attribute_type = CoinAttributeType.find(params[:id])
    @coin_attribute_type.destroy

    respond_to do |format|
      format.html { redirect_to coin_attribute_types_url }
      format.json { head :no_content }
    end
  end
end
