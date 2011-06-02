class LabRacksController < ApplicationController
  def index
    @lab_racks = LabRack.all
  
    respond_to do |format|
      format.html #index.html.erb
      format.xml { render :xml => @lab_racks }
    end
  end

  # GET /lab_racks/1
  # GET /lab_racks/1.xml
  def show
    @lab_rack = LabRack.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @lab_rack }
    end
  end

  # GET /lab_racks/new
  # GET /lab_racks/new.xml
  def new
    @lab_rack = LabRack.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @lab_rack }
    end
  end

  # GET /lab_racks/1/edit
  def edit
    @lab_rack = LabRack.find(params[:id])
  end

  # POST /lab_racks
  # POST /lab_racks.xml
  def create
    @lab_rack = LabRack.new(params[:lab_rack])

    respond_to do |format|
      if @lab_rack.save
        format.html { redirect_to(@lab_rack, :notice => 'Lab rack was successfully created.') }
        format.xml  { render :xml => @lab_rack, :status => :created, :location => @lab_rack }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @lab_rack.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /lab_racks/1
  # PUT /lab_racks/1.xml
  def update
    @lab_rack = LabRack.find(params[:id])

    respond_to do |format|
      if @lab_rack.update_attributes(params[:lab_rack])
        format.html { redirect_to(@lab_rack, :notice => 'Lab rack was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @lab_rack.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /lab_racks/1
  # DELETE /lab_racks/1.xml
  def destroy
    @lab_rack = LabRack.find(params[:id])
    @lab_rack.destroy

    respond_to do |format|
      format.html { redirect_to(lab_racks_url) }
      format.xml  { head :ok }
    end
  end
end
