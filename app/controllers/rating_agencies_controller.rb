class RatingAgenciesController < ApplicationController
  # GET /rating_agencies
  # GET /rating_agencies.json
  def index
    @rating_agencies = RatingAgency.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @rating_agencies }
    end
  end

  # GET /rating_agencies/1
  # GET /rating_agencies/1.json
  def show
    @rating_agency = RatingAgency.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @rating_agency }
    end
  end

  # GET /rating_agencies/new
  # GET /rating_agencies/new.json
  def new
    @rating_agency = RatingAgency.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @rating_agency }
    end
  end

  # GET /rating_agencies/1/edit
  def edit
    @rating_agency = RatingAgency.find(params[:id])
  end

  # POST /rating_agencies
  # POST /rating_agencies.json
  def create
    @rating_agency = RatingAgency.new(params[:rating_agency])

    respond_to do |format|
      if @rating_agency.save
        format.html { redirect_to @rating_agency, :notice => 'Rating agency was successfully created.' }
        format.json { render :json => @rating_agency, :status => :created, :location => @rating_agency }
      else
        format.html { render :action => "new" }
        format.json { render :json => @rating_agency.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /rating_agencies/1
  # PUT /rating_agencies/1.json
  def update
    @rating_agency = RatingAgency.find(params[:id])

    respond_to do |format|
      if @rating_agency.update_attributes(params[:rating_agency])
        format.html { redirect_to @rating_agency, :notice => 'Rating agency was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @rating_agency.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /rating_agencies/1
  # DELETE /rating_agencies/1.json
  def destroy
    @rating_agency = RatingAgency.find(params[:id])
    @rating_agency.destroy

    respond_to do |format|
      format.html { redirect_to rating_agencies_url }
      format.json { head :no_content }
    end
  end
end
