class MediaTypesController < ApplicationController
  # GET /media_types
  # GET /media_types.xml
  def index
    @media_types = MediaType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @media_types }
    end
  end

  # GET /media_types/1
  # GET /media_types/1.xml
  def show
    @media_type = MediaType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @media_type }
    end
  end

  # GET /media_types/new
  # GET /media_types/new.xml
  def new
    @media_type = MediaType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @media_type }
    end
  end

  # GET /media_types/1/edit
  def edit
    @media_type = MediaType.find(params[:id])
  end

  # POST /media_types
  # POST /media_types.xml
  def create
    @media_type = MediaType.new(params[:media_type])

    respond_to do |format|
      if @media_type.save
        format.html { redirect_to(@media_type, :notice => 'MediaType was successfully created.') }
        format.xml  { render :xml => @media_type, :status => :created, :location => @media_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @media_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /media_types/1
  # PUT /media_types/1.xml
  def update
    @media_type = MediaType.find(params[:id])

    respond_to do |format|
      if @media_type.update_attributes(params[:media_type])
        format.html { redirect_to(@media_type, :notice => 'MediaType was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @media_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /media_types/1
  # DELETE /media_types/1.xml
  def destroy
    @media_type = MediaType.find(params[:id])
    @media_type.destroy

    respond_to do |format|
      format.html { redirect_to(media_types_url) }
      format.xml  { head :ok }
    end
  end
end
