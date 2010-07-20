class ConnectionTypesController < ApplicationController
  # GET /connection_types
  # GET /connection_types.xml
  def index
    @connection_types = ConnectionType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @connection_types }
    end
  end

  # GET /connection_types/1
  # GET /connection_types/1.xml
  def show
    @connection_type = ConnectionType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @connection_type }
    end
  end

  # GET /connection_types/new
  # GET /connection_types/new.xml
  def new
    @connection_type = ConnectionType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @connection_type }
    end
  end

  # GET /connection_types/1/edit
  def edit
    @connection_type = ConnectionType.find(params[:id])
  end

  # POST /connection_types
  # POST /connection_types.xml
  def create
    @connection_type = ConnectionType.new(params[:connection_type])

    respond_to do |format|
      if @connection_type.save
        format.html { redirect_to(@connection_type, :notice => 'ConnectionType was successfully created.') }
        format.xml  { render :xml => @connection_type, :status => :created, :location => @connection_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @connection_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /connection_types/1
  # PUT /connection_types/1.xml
  def update
    @connection_type = ConnectionType.find(params[:id])

    respond_to do |format|
      if @connection_type.update_attributes(params[:connection_type])
        format.html { redirect_to(@connection_type, :notice => 'ConnectionType was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @connection_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /connection_types/1
  # DELETE /connection_types/1.xml
  def destroy
    @connection_type = ConnectionType.find(params[:id])
    @connection_type.destroy

    respond_to do |format|
      format.html { redirect_to(connection_types_url) }
      format.xml  { head :ok }
    end
  end
end
