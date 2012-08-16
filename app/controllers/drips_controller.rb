class DripsController < ApplicationController
  # GET /drips
  # GET /drips.json
  def index
    @drips = Drip.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @drips }
    end
  end

  # GET /drips/1
  # GET /drips/1.json
  def show
    @drip = Drip.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @drip }
    end
  end

  # GET /drips/new
  # GET /drips/new.json
  def new
    @drip = Drip.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @drip }
    end
  end

  # GET /drips/1/edit
  def edit
    @drip = Drip.find(params[:id])
  end

  # POST /drips
  # POST /drips.json
  def create
    @drip = Drip.new(params[:drip])

    respond_to do |format|
      if @drip.save
        format.html { redirect_to @drip, notice: 'Drip was successfully created.' }
        format.json { render json: @drip, status: :created, location: @drip }
      else
        format.html { render action: "new" }
        format.json { render json: @drip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /drips/1
  # PUT /drips/1.json
  def update
    @drip = Drip.find(params[:id])

    respond_to do |format|
      if @drip.update_attributes(params[:drip])
        format.html { redirect_to @drip, notice: 'Drip was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @drip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /drips/1
  # DELETE /drips/1.json
  def destroy
    @drip = Drip.find(params[:id])
    @drip.destroy

    respond_to do |format|
      format.html { redirect_to drips_url }
      format.json { head :no_content }
    end
  end
end
