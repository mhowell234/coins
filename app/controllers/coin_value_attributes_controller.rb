class CoinValueAttributesController < ApplicationController


  # Uses coin_value_id to the create @coin_value object
  before_filter :get_coin_value

  # GET /coin_value_attributes
  # GET /coin_value_attributes.json
  def index
    @coin_value_attributes = @coin_value.coin_value_attributes

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @coin_value_attributes }
    end
  end

  # GET /coin_value_attributes/1
  # GET /coin_value_attributes/1.json
  def show
    @coin_value_attribute = @coin_value.coin_value_attributes.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @coin_value_attribute }
    end
  end

  # GET /coin_value_attributes/new
  # GET /coin_value_attributes/new.json
  def new
    @coin_value_attribute = @coin_value.coin_value_attributes.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @coin_value_attribute }
    end
  end

  # GET /coin_value_attributes/1/edit
  def edit
    @coin_value_attribute = @coin_value.coin_value_attributes.find(params[:id])
  end

  # POST /coin_value_attributes
  # POST /coin_value_attributes.json
  def create
    @coin_value_attribute = @coin_value.coin_value_attributes.build(params[:coin_attribute])

  
    respond_to do |format|
      if @coin_value_attribute.save
        format.html { redirect_to coin_value_coin_value_attributes_url([@coin_value]), :notice => 'Attribute was successfully created.' }
        format.json { render :json => @coin_value_attribute, :status => :created, :location => @coin_value_attribute }
      else
        format.html { render :action => "new" }
        format.json { render :json => @coin_value_attribute.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /coin_value_attributes/1
  # PUT /coin_value_attributes/1.json
  def update
    @coin_value_attribute = @coin_value.coin_value_attributes.find(params[:id])
  
    respond_to do |format|
      if @coin_value_attribute.update_attributes(params[:coin_attribute])
        format.html { redirect_to coin_value_coin_value_attributes_url([@coin_value]), :notice => 'Attribute was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @coin_value_attribute.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /coin_value_attributes/1
  # DELETE /coin_value_attributes/1.json
  def destroy
    @coin_value_attribute = @coin_value.coin_value_attributes.find(params[:id])
    @coin_value_attribute.destroy

    respond_to do |format|
      format.html { redirect_to coin_value_coin_value_attributes_path([@coin_value]) }
      format.json { head :no_content }
    end
  end
  
  
  private
  
  # get_coin_value converts the coin_value_id given by routing into 
  # a @coin_value object, for use here and in the view.
  def get_coin_value
    @coin_value = CoinValue.find(params[:coin_value_id])
  end
  
  
end
