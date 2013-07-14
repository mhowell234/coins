class PhotosController < ApplicationController

  # Uses coin_id to create the @coin object
  before_filter :get_coin

  # GET /photos
  # GET /photos.json
  def index
    @photos = @coin.photos

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @photos }
    end
  end

  # GET /photos/1
  # GET /photos/1.json
  def show
    @photo = @coin.photos.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @photo }
    end
  end

  # GET /photos/new
  # GET /photos/new.json
  def new
    @photo = @coin.photos.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @photo }
    end
  end

  # GET /photos/1/edit
  def edit
    @photo = @coin.photos.find(params[:id])
  end

  # POST /photos
  # POST /photos.json
  def create
    @photo = @coin.photos.build(params[:photo])

    respond_to do |format|
      if @photo.save
        format.html { redirect_to coin_photos_url([@coin]), :notice => 'Photo was successfully created.' }
        format.json { render :json => @photo, :status => :created, :location => @photo }
      else
        format.html { render :action => "new" }
        format.json { render :json => @photo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /photos/1
  # PUT /photos/1.json
  def update
    @photo = @coin.photos.find(params[:id])

    respond_to do |format|
      if @photo.update_attributes(params[:photo])
        format.html { redirect_to coin_photos_url([@coin]), :notice => 'Photo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @photo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /photos/1
  # DELETE /photos/1.json
  def destroy
    @photo = @coin.photos.find(params[:id])
    @photo.destroy

    respond_to do |format|
      format.html { redirect_to coin_photos_path([@coin]) }
      format.json { head :no_content }
    end
  end

  
  private
  
  # get_coin converts the coin_id given by routing into 
  # a @coin object, for use here and in the view.
  def get_coin
    @coin = Coin.find(params[:coin_id])
  end
    
end
