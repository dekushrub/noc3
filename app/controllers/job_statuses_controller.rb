class JobStatusesController < ApplicationController
  # GET /job_statuses
  # GET /job_statuses.xml
  def index
    @job_statuses = JobStatus.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @job_statuses }
    end
  end

  # GET /job_statuses/1
  # GET /job_statuses/1.xml
  def show
    @job_status = JobStatus.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @job_status }
    end
  end

  # GET /job_statuses/new
  # GET /job_statuses/new.xml
  def new
    @job_status = JobStatus.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @job_status }
    end
  end

  # GET /job_statuses/1/edit
  def edit
    @job_status = JobStatus.find(params[:id])
  end

  # POST /job_statuses
  # POST /job_statuses.xml
  def create
    @job_status = JobStatus.new(params[:job_status])

    respond_to do |format|
      if @job_status.save
        format.html { redirect_to(@job_status, :notice => 'JobStatus was successfully created.') }
        format.xml  { render :xml => @job_status, :status => :created, :location => @job_status }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @job_status.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /job_statuses/1
  # PUT /job_statuses/1.xml
  def update
    @job_status = JobStatus.find(params[:id])

    respond_to do |format|
      if @job_status.update_attributes(params[:job_status])
        format.html { redirect_to(@job_status, :notice => 'JobStatus was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @job_status.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /job_statuses/1
  # DELETE /job_statuses/1.xml
  def destroy
    @job_status = JobStatus.find(params[:id])
    @job_status.destroy

    respond_to do |format|
      format.html { redirect_to(job_statuses_url) }
      format.xml  { head :ok }
    end
  end
end
