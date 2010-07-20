class DhcpScopesController < ApplicationController
  # GET /dhcp_scopes
  # GET /dhcp_scopes.xml
  def index
    @dhcp_scopes = DhcpScope.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @dhcp_scopes }
    end
  end

  # GET /dhcp_scopes/1
  # GET /dhcp_scopes/1.xml
  def show
    @dhcp_scope = DhcpScope.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @dhcp_scope }
    end
  end

  # GET /dhcp_scopes/new
  # GET /dhcp_scopes/new.xml
  def new
    @dhcp_scope = DhcpScope.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @dhcp_scope }
    end
  end

  # GET /dhcp_scopes/1/edit
  def edit
    @dhcp_scope = DhcpScope.find(params[:id])
  end

  # POST /dhcp_scopes
  # POST /dhcp_scopes.xml
  def create
    @dhcp_scope = DhcpScope.new(params[:dhcp_scope])

    respond_to do |format|
      if @dhcp_scope.save
        format.html { redirect_to(@dhcp_scope, :notice => 'DhcpScope was successfully created.') }
        format.xml  { render :xml => @dhcp_scope, :status => :created, :location => @dhcp_scope }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @dhcp_scope.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /dhcp_scopes/1
  # PUT /dhcp_scopes/1.xml
  def update
    @dhcp_scope = DhcpScope.find(params[:id])

    respond_to do |format|
      if @dhcp_scope.update_attributes(params[:dhcp_scope])
        format.html { redirect_to(@dhcp_scope, :notice => 'DhcpScope was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @dhcp_scope.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /dhcp_scopes/1
  # DELETE /dhcp_scopes/1.xml
  def destroy
    @dhcp_scope = DhcpScope.find(params[:id])
    @dhcp_scope.destroy

    respond_to do |format|
      format.html { redirect_to(dhcp_scopes_url) }
      format.xml  { head :ok }
    end
  end
end
