class TelecomRoomsController < ApplicationController
  # GET /telecom_rooms
  # GET /telecom_rooms.xml
  def index
    @telecom_rooms = TelecomRoom.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @telecom_rooms }
    end
  end

  # GET /telecom_rooms/1
  # GET /telecom_rooms/1.xml
  def show
    @telecom_room = TelecomRoom.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @telecom_room }
    end
  end

  # GET /telecom_rooms/new
  # GET /telecom_rooms/new.xml
  def new
    @telecom_room = TelecomRoom.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @telecom_room }
    end
  end

  # GET /telecom_rooms/1/edit
  def edit
    @telecom_room = TelecomRoom.find(params[:id])
  end

  # POST /telecom_rooms
  # POST /telecom_rooms.xml
  def create
    @telecom_room = TelecomRoom.new(params[:telecom_room])

    respond_to do |format|
      if @telecom_room.save
        format.html { redirect_to(@telecom_room, :notice => 'TelecomRoom was successfully created.') }
        format.xml  { render :xml => @telecom_room, :status => :created, :location => @telecom_room }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @telecom_room.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /telecom_rooms/1
  # PUT /telecom_rooms/1.xml
  def update
    @telecom_room = TelecomRoom.find(params[:id])

    respond_to do |format|
      if @telecom_room.update_attributes(params[:telecom_room])
        format.html { redirect_to(@telecom_room, :notice => 'TelecomRoom was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @telecom_room.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /telecom_rooms/1
  # DELETE /telecom_rooms/1.xml
  def destroy
    @telecom_room = TelecomRoom.find(params[:id])
    @telecom_room.destroy

    respond_to do |format|
      format.html { redirect_to(telecom_rooms_url) }
      format.xml  { head :ok }
    end
  end
end
