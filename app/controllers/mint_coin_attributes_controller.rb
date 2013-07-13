class MintCoinAttributesController < ApplicationController

  # Uses mint_coin_id to the create @mint_coin object
  before_filter :get_mint_coin


  # GET /mint_coin_attributes
  # GET /mint_coin_attributes.json
  def index
    @mint_coin_attributes = @mint_coin.mint_coin_attributes

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @mint_coin_attributes }
    end
  end

  # GET /mint_coin_attributes/1
  # GET /mint_coin_attributes/1.json
  def show
    @mint_coin_attribute = @mint_coin.mint_coin_attributes.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @mint_coin_attribute }
    end
  end

  # GET /mint_coin_attributes/new
  # GET /mint_coin_attributes/new.json
  def new
    @mint_coin_attribute = @mint_coin.mint_coin_attributes.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @mint_coin_attribute }
    end
  end

  # GET /mint_coin_attributes/1/edit
  def edit
    @mint_coin_attribute = @mint_coin.mint_coin_attributes.find(params[:id])
  end

  # POST /mint_coin_attributes
  # POST /mint_coin_attributes.json
  def create
    @mint_coin_attribute = @mint_coin.mint_coin_attributes.build(params[:mint_coin_attribute])

    respond_to do |format|
      if @mint_coin_attribute.save
        format.html { redirect_to mint_coin_mint_coin_attributes_url([@mint_coin]), :notice => 'Attribute was successfully created.' }
        format.json { render :json => @mint_coin_attribute, :status => :created, :location => @mint_coin_attribute }
      else
        format.html { render :action => "new" }
        format.json { render :json => @mint_coin_attribute.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /mint_coin_attributes/1
  # PUT /mint_coin_attributes/1.json
  def update
    @mint_coin_attribute = @mint_coin.mint_coin_attributes.find(params[:id])
  
    respond_to do |format|
      if @mint_coin_attribute.update_attributes(params[:mint_coin_attribute])
        format.html { redirect_to mint_coin_mint_coin_attributes_url([@mint_coin]), :notice => 'Attribute was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @mint_coin_attribute.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /mint_coin_attributes/1
  # DELETE /mint_coin_attributes/1.json
  def destroy
    @mint_coin_attribute = @mint_coin.mint_coin_attributes.find(params[:id])
    @mint_coin_attribute.destroy

    respond_to do |format|
      format.html { redirect_to mint_coin_mint_coin_attributes_path([@mint_coin]) }
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
