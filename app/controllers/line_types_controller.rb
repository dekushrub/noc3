class LineTypesController < ApplicationController
  # GET /line_types
  # GET /line_types.xml
  def index
    @line_types = LineType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @line_types }
    end
  end

  # GET /line_types/1
  # GET /line_types/1.xml
  def show
    @line_type = LineType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @line_type }
    end
  end

  # GET /line_types/new
  # GET /line_types/new.xml
  def new
    @line_type = LineType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @line_type }
    end
  end

  # GET /line_types/1/edit
  def edit
    @line_type = LineType.find(params[:id])
  end

  # POST /line_types
  # POST /line_types.xml
  def create
    @line_type = LineType.new(params[:line_type])

    respond_to do |format|
      if @line_type.save
        format.html { redirect_to(@line_type, :notice => 'LineType was successfully created.') }
        format.xml  { render :xml => @line_type, :status => :created, :location => @line_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @line_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /line_types/1
  # PUT /line_types/1.xml
  def update
    @line_type = LineType.find(params[:id])

    respond_to do |format|
      if @line_type.update_attributes(params[:line_type])
        format.html { redirect_to(@line_type, :notice => 'LineType was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @line_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /line_types/1
  # DELETE /line_types/1.xml
  def destroy
    @line_type = LineType.find(params[:id])
    @line_type.destroy

    respond_to do |format|
      format.html { redirect_to(line_types_url) }
      format.xml  { head :ok }
    end
  end
end
