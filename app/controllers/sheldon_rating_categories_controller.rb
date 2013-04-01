class SheldonRatingCategoriesController < ApplicationController
  # GET /sheldon_rating_categories
  # GET /sheldon_rating_categories.json
  def index
    @sheldon_rating_categories = SheldonRatingCategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @sheldon_rating_categories }
    end
  end

  # GET /sheldon_rating_categories/1
  # GET /sheldon_rating_categories/1.json
  def show
    @sheldon_rating_category = SheldonRatingCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @sheldon_rating_category }
    end
  end

  # GET /sheldon_rating_categories/new
  # GET /sheldon_rating_categories/new.json
  def new
    @sheldon_rating_category = SheldonRatingCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @sheldon_rating_category }
    end
  end

  # GET /sheldon_rating_categories/1/edit
  def edit
    @sheldon_rating_category = SheldonRatingCategory.find(params[:id])
  end

  # POST /sheldon_rating_categories
  # POST /sheldon_rating_categories.json
  def create
    @sheldon_rating_category = SheldonRatingCategory.new(params[:sheldon_rating_category])

    respond_to do |format|
      if @sheldon_rating_category.save
        format.html { redirect_to @sheldon_rating_category, :notice => 'Sheldon rating category was successfully created.' }
        format.json { render :json => @sheldon_rating_category, :status => :created, :location => @sheldon_rating_category }
      else
        format.html { render :action => "new" }
        format.json { render :json => @sheldon_rating_category.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sheldon_rating_categories/1
  # PUT /sheldon_rating_categories/1.json
  def update
    @sheldon_rating_category = SheldonRatingCategory.find(params[:id])

    respond_to do |format|
      if @sheldon_rating_category.update_attributes(params[:sheldon_rating_category])
        format.html { redirect_to @sheldon_rating_category, :notice => 'Sheldon rating category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @sheldon_rating_category.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sheldon_rating_categories/1
  # DELETE /sheldon_rating_categories/1.json
  def destroy
    @sheldon_rating_category = SheldonRatingCategory.find(params[:id])
    @sheldon_rating_category.destroy

    respond_to do |format|
      format.html { redirect_to sheldon_rating_categories_url }
      format.json { head :no_content }
    end
  end
end
