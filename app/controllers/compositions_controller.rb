class CompositionsController < ApplicationController

  # Uses mint_coin_id to create @mint_coin object
  before_filter :get_mint_coin


  # GET /compositions
  # GET /compositions.json
  def index
    @compositions = @mint_coin.compositions

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @compositions }
    end
  end

  # GET /compositions/1
  # GET /compositions/1.json
  def show
    @composition = @mint_coin.compositions.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @composition }
    end
  end

  # GET /compositions/new
  # GET /compositions/new.json
  def new
    @composition = @mint_coin.compositions.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @composition }
    end
  end

  # GET /compositions/1/edit
  def edit
    @composition = @mint_coin.compositions.find(params[:id])
  end

  # POST /compositions
  # POST /compositions.json
  def create
    @composition = @mint_coin.compositions.build(params[:composition])

    respond_to do |format|
      if @composition.save
        format.html { redirect_to mint_coin_compositions_url([@mint_coin]), :notice => 'Composition was successfully created.' }
        format.json { render :json => @composition, :status => :created, :location => @composition }
      else
        format.html { render :action => "new" }
        format.json { render :json => @composition.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /compositions/1
  # PUT /compositions/1.json
  def update
    @composition = @mint_coin.compositions.find(params[:id])

    respond_to do |format|
      if @composition.update_attributes(params[:composition])
        format.html { redirect_to mint_coin_compositions_url([@mint_coin]), :notice => 'Composition was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @composition.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /compositions/1
  # DELETE /compositions/1.json
  def destroy
    @composition = @mint_coin.compositions.find(params[:id])
    @composition.destroy

    respond_to do |format|
      format.html { redirect_to mint_coin_compositions_url([@mint_coin]) }
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
