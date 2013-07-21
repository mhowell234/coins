class OurCoinThumbnailsController < ApplicationController

  # Uses coin_id to create the @our_coin object
  before_filter :get_our_coin

  # GET /OurCoinThumbnails
  # GET /OurCoinThumbnails.json
  def index
    @our_coin_thumbnails = @our_coin.our_coin_thumbnails

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @our_coin_thumbnails }
    end
  end

  # GET /OurCoinThumbnails/1
  # GET /OurCoinThumbnails/1.json
  def show
    @our_coin_thumbnail = @our_coin.our_coin_thumbnails.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @our_coin_thumbnail }
    end
  end

  # GET /OurCoinThumbnails/new
  # GET /OurCoinThumbnails/new.json
  def new
    @our_coin_thumbnail = @our_coin.our_coin_thumbnails.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @our_coin_thumbnail }
    end
  end

  # GET /OurCoinThumbnails/1/edit
  def edit
    @our_coin_thumbnail = @our_coin.our_coin_thumbnails.find(params[:id])
  end

  # POST /OurCoinThumbnails
  # POST /OurCoinThumbnails.json
  def create
    @our_coin_thumbnail = @our_coin.our_coin_thumbnails.build(params[:our_coin_thumbnail])

    respond_to do |format|
      if @our_coin_thumbnail.save
        format.html { redirect_to our_coin_our_coin_thumbnails_url([@our_coin]), :notice => 'Thumbnail was successfully created.' }
        format.json { render :json => @our_coin_thumbnail, :status => :created, :location => @our_coin_thumbnail }
      else
        format.html { render :action => "new" }
        format.json { render :json => @our_coin_thumbnail.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /OurCoinThumbnails/1
  # PUT /OurCoinThumbnails/1.json
  def update
    @our_coin_thumbnail = @our_coin.our_coin_thumbnails.find(params[:id])

    respond_to do |format|
      if @our_coin_thumbnail.update_attributes(params[:our_coin_thumbnail])
        format.html { redirect_to our_coin_our_coin_thumbnails_url([@our_coin]), :notice => 'Thumbnail was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @our_coin_thumbnail.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /OurCoinThumbnails/1
  # DELETE /OurCoinThumbnails/1.json
  def destroy
    @our_coin_thumbnail = @our_coin.our_coin_thumbnails.find(params[:id])
    @our_coin_thumbnail.destroy

    respond_to do |format|
      format.html { redirect_to our_coin_our_coin_thumbnails_path([@our_coin]) }
      format.json { head :no_content }
    end
  end

  
  private
  
  # get_coin converts the coin_id given by routing into 
  # a @our_coin object, for use here and in the view.
  def get_our_coin
    @our_coin = OurCoin.find(params[:our_coin_id])
  end
  
end
