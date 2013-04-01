class PreciousMetalsController < ApplicationController
  # GET /precious_metals
  # GET /precious_metals.json
  def index
    @precious_metals = PreciousMetal.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @precious_metals }
    end
  end

  # GET /precious_metals/1
  # GET /precious_metals/1.json
  def show
    @precious_metal = PreciousMetal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @precious_metal }
    end
  end

  # GET /precious_metals/new
  # GET /precious_metals/new.json
  def new
    @precious_metal = PreciousMetal.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @precious_metal }
    end
  end

  # GET /precious_metals/1/edit
  def edit
    @precious_metal = PreciousMetal.find(params[:id])
  end

  # POST /precious_metals
  # POST /precious_metals.json
  def create
    @precious_metal = PreciousMetal.new(params[:precious_metal])

    respond_to do |format|
      if @precious_metal.save
        format.html { redirect_to @precious_metal, :notice => 'Precious metal was successfully created.' }
        format.json { render :json => @precious_metal, :status => :created, :location => @precious_metal }
      else
        format.html { render :action => "new" }
        format.json { render :json => @precious_metal.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /precious_metals/1
  # PUT /precious_metals/1.json
  def update
    @precious_metal = PreciousMetal.find(params[:id])

    respond_to do |format|
      if @precious_metal.update_attributes(params[:precious_metal])
        format.html { redirect_to @precious_metal, :notice => 'Precious metal was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @precious_metal.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /precious_metals/1
  # DELETE /precious_metals/1.json
  def destroy
    @precious_metal = PreciousMetal.find(params[:id])
    @precious_metal.destroy

    respond_to do |format|
      format.html { redirect_to precious_metals_url }
      format.json { head :no_content }
    end
  end
end
