class UnitsController < ApplicationController
  before_filter :load_lab_rack

  # GET /units/new
  # GET /units/new.xml
  def new
    @unit = Unit.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @unit }
    end
  end

  # GET /units/1/edit
  def edit
    @unit = @lab_rack.units.find(params[:id])
  end

  # POST /units
  def create
    @unit = @lab_rack.units.new(params[:unit])

    if @unit.save
      redirect_to @lab_rack, :notice => "New unit has been saved"
    else
      redirect_to @lab_rack, :alert => "Unable to save unit"
    end
  end

  # PUT /units/1
  def update
    @unit = @lab_rack.units.find(params[:id])

    if @unit.update_attributes(params[:unit])
      redirect_to @lab_rack, :notice => "Edits for unit have been saved"
    else
      redirect_to @lab_rack, :alert => "Unable to save edits for unit"
    end
  end

  # DELETE /units/1
  # DELETE /units/1.xml
  def destroy
    @unit = @lab_rack.units.find(params[:id])
    @unit.destroy
    
    redirect_to @lab_rack, :notice => "Unit has been deleted"
  end

  private
    def load_lab_rack
      @lab_rack = LabRack.find(params[:lab_rack_id])
    end
end
