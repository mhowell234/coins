class SheldonRatingScalesController < ApplicationController

  # Uses coin_value_id to create a @coin_value object
  before_filter :get_sheldon_rating_category
  

  # GET /sheldon_rating_scales
  # GET /sheldon_rating_scales.json
  def index
  
    @sheldon_rating_scales = @sheldon_rating_category.sheldon_rating_scales
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @sheldon_rating_scales }
    end
  end

  # GET /sheldon_rating_scales/1
  # GET /sheldon_rating_scales/1.json
  def show
    @sheldon_rating_scale = @sheldon_rating_category.sheldon_rating_scales.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @sheldon_rating_scale }
    end
  end

  # GET /sheldon_rating_scales/new
  # GET /sheldon_rating_scales/new.json
  def new
    @sheldon_rating_category = SheldonRatingCategory.find(params[:sheldon_rating_category_id])
    @sheldon_rating_scale = @sheldon_rating_category.sheldon_rating_scales.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @sheldon_rating_scale }
    end
  end

  # GET /sheldon_rating_scales/1/edit
  def edit
    @sheldon_rating_scale = @sheldon_rating_category.sheldon_rating_scales.find(params[:id])
  end

  # POST /sheldon_rating_scales
  # POST /sheldon_rating_scales.json
  def create
    @sheldon_rating_scale = @sheldon_rating_category.sheldon_rating_scales.new(params[:sheldon_rating_scale])

    respond_to do |format|
      if @sheldon_rating_scale.save
        format.html { redirect_to sheldon_rating_category_sheldon_rating_scales_url(@sheldon_rating_category), :notice => 'Sheldon rating scale was successfully created.' }
        format.html { redirect_to @sheldon_rating_scale, :notice => 'Sheldon rating scale was successfully created.' }
        format.json { render :json => @sheldon_rating_scale, :status => :created, :location => @sheldon_rating_scale }
      else
        format.html { render :action => "new" }
        format.json { render :json => @sheldon_rating_scale.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sheldon_rating_scales/1
  # PUT /sheldon_rating_scales/1.json
  def update
    @sheldon_rating_scale = @sheldon_rating_category.sheldon_rating_scales.find(params[:id])

    respond_to do |format|
      if @sheldon_rating_scale.update_attributes(params[:sheldon_rating_scale])
        format.html { redirect_to sheldon_rating_category_sheldon_rating_scales_url, :notice => 'Sheldon rating scale was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @sheldon_rating_scale.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sheldon_rating_scales/1
  # DELETE /sheldon_rating_scales/1.json
  def destroy
    @sheldon_rating_scale = @sheldon_rating_category.sheldon_rating_scales.find(params[:id])
    @sheldon_rating_scale.destroy

    respond_to do |format|
      format.html { redirect_to sheldon_rating_category_sheldon_rating_scales_path(@sheldon_rating_category) }
      format.json { head :no_content }
    end
  end
  
  
  private
  
  # get_sheldon_rating_category converts the sheldon_rating_category_id given by routing into 
  # a @sheldon_rating_category object, for use here and in the view.
  def get_sheldon_rating_category
    @sheldon_rating_category = SheldonRatingCategory.find(params[:sheldon_rating_category_id])
  end
  
  
  
end
