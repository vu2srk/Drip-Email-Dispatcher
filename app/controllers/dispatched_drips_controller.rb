class DispatchedDripsController < ApplicationController
  # GET /dispatched_drips
  # GET /dispatched_drips.json
  def index
    @dispatched_drips = DispatchedDrip.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dispatched_drips }
    end
  end

  # GET /dispatched_drips/1
  # GET /dispatched_drips/1.json
  def show
    @dispatched_drip = DispatchedDrip.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dispatched_drip }
    end
  end

  # GET /dispatched_drips/new
  # GET /dispatched_drips/new.json
  def new
    @dispatched_drip = DispatchedDrip.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dispatched_drip }
    end
  end

  # GET /dispatched_drips/1/edit
  def edit
    @dispatched_drip = DispatchedDrip.find(params[:id])
  end

  # POST /dispatched_drips
  # POST /dispatched_drips.json
  def create
    @dispatched_drip = DispatchedDrip.new(params[:dispatched_drip])

    respond_to do |format|
      if @dispatched_drip.save
        format.html { redirect_to @dispatched_drip, notice: 'Dispatched drip was successfully created.' }
        format.json { render json: @dispatched_drip, status: :created, location: @dispatched_drip }
      else
        format.html { render action: "new" }
        format.json { render json: @dispatched_drip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dispatched_drips/1
  # PUT /dispatched_drips/1.json
  def update
    @dispatched_drip = DispatchedDrip.find(params[:id])

    respond_to do |format|
      if @dispatched_drip.update_attributes(params[:dispatched_drip])
        format.html { redirect_to @dispatched_drip, notice: 'Dispatched drip was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @dispatched_drip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dispatched_drips/1
  # DELETE /dispatched_drips/1.json
  def destroy
    @dispatched_drip = DispatchedDrip.find(params[:id])
    @dispatched_drip.destroy

    respond_to do |format|
      format.html { redirect_to dispatched_drips_url }
      format.json { head :no_content }
    end
  end
end
