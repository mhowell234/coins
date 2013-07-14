class ThumbnailsController < ApplicationController

  # Uses coin_id to create the @coin object
  before_filter :get_coin

  # GET /thumbnails
  # GET /thumbnails.json
  def index
    @thumbnails = @coin.thumbnails

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @thumbnails }
    end
  end

  # GET /thumbnails/1
  # GET /thumbnails/1.json
  def show
    @thumbnail = @coin.thumbnails.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @thumbnail }
    end
  end

  # GET /thumbnails/new
  # GET /thumbnails/new.json
  def new
    @thumbnail = @coin.thumbnails.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @thumbnail }
    end
  end

  # GET /thumbnails/1/edit
  def edit
    @thumbnail = @coin.thumbnails.find(params[:id])
  end

  # POST /thumbnails
  # POST /thumbnails.json
  def create
    @thumbnail = @coin.thumbnails.build(params[:thumbnail])

    respond_to do |format|
      if @thumbnail.save
        format.html { redirect_to coin_thumbnails_url([@coin]), :notice => 'Thumbnail was successfully created.' }
        format.json { render :json => @thumbnail, :status => :created, :location => @thumbnail }
      else
        format.html { render :action => "new" }
        format.json { render :json => @thumbnail.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /thumbnails/1
  # PUT /thumbnails/1.json
  def update
    @thumbnail = @coin.thumbnails.find(params[:id])

    respond_to do |format|
      if @thumbnail.update_attributes(params[:thumbnail])
        format.html { redirect_to coin_thumbnails_url([@coin]), :notice => 'Thumbnail was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @thumbnail.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /thumbnails/1
  # DELETE /thumbnails/1.json
  def destroy
    @thumbnail = @coin.thumbnails.find(params[:id])
    @thumbnail.destroy

    respond_to do |format|
      format.html { redirect_to coin_thumbnails_path([@coin]) }
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
