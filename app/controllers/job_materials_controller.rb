class JobMaterialsController < ApplicationController
  # GET /job_materials
  # GET /job_materials.xml
  def index
    @job_materials = JobMaterial.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @job_materials }
    end
  end

  # GET /job_materials/1
  # GET /job_materials/1.xml
  def show
    @job_material = JobMaterial.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @job_material }
    end
  end

  # GET /job_materials/new
  # GET /job_materials/new.xml
  def new
    @job_material = JobMaterial.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @job_material }
    end
  end

  # GET /job_materials/1/edit
  def edit
    @job_material = JobMaterial.find(params[:id])
  end

  # POST /job_materials
  # POST /job_materials.xml
  def create
    @job_material = JobMaterial.new(params[:job_material])

    respond_to do |format|
      if @job_material.save
        format.html { redirect_to(@job_material, :notice => 'JobMaterial was successfully created.') }
        format.xml  { render :xml => @job_material, :status => :created, :location => @job_material }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @job_material.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /job_materials/1
  # PUT /job_materials/1.xml
  def update
    @job_material = JobMaterial.find(params[:id])

    respond_to do |format|
      if @job_material.update_attributes(params[:job_material])
        format.html { redirect_to(@job_material, :notice => 'JobMaterial was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @job_material.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /job_materials/1
  # DELETE /job_materials/1.xml
  def destroy
    @job_material = JobMaterial.find(params[:id])
    @job_material.destroy

    respond_to do |format|
      format.html { redirect_to(job_materials_url) }
      format.xml  { head :ok }
    end
  end
end
