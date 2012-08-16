class DripEmailsController < ApplicationController
  # GET /drip_emails
  # GET /drip_emails.json
  def index
    @drip_emails = DripEmail.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @drip_emails }
    end
  end

  # GET /drip_emails/1
  # GET /drip_emails/1.json
  def show
    @drip_email = DripEmail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @drip_email }
    end
  end

  # GET /drip_emails/new
  # GET /drip_emails/new.json
  def new
    @drip_email = DripEmail.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @drip_email }
    end
  end

  # GET /drip_emails/1/edit
  def edit
    @drip_email = DripEmail.find(params[:id])
  end

  # POST /drip_emails
  # POST /drip_emails.json
  def create
    @drip_email = DripEmail.new(params[:drip_email])

    respond_to do |format|
      if @drip_email.save
        format.html { redirect_to @drip_email, notice: 'Drip email was successfully created.' }
        format.json { render json: @drip_email, status: :created, location: @drip_email }
      else
        format.html { render action: "new" }
        format.json { render json: @drip_email.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /drip_emails/1
  # PUT /drip_emails/1.json
  def update
    @drip_email = DripEmail.find(params[:id])

    respond_to do |format|
      if @drip_email.update_attributes(params[:drip_email])
        format.html { redirect_to @drip_email, notice: 'Drip email was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @drip_email.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /drip_emails/1
  # DELETE /drip_emails/1.json
  def destroy
    @drip_email = DripEmail.find(params[:id])
    @drip_email.destroy

    respond_to do |format|
      format.html { redirect_to drip_emails_url }
      format.json { head :no_content }
    end
  end
end
