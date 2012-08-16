class DispatchedEmailsController < ApplicationController
  # GET /dispatched_emails
  # GET /dispatched_emails.json
  def index
    @dispatched_emails = DispatchedEmail.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dispatched_emails }
    end
  end

  # GET /dispatched_emails/1
  # GET /dispatched_emails/1.json
  def show
    @dispatched_email = DispatchedEmail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dispatched_email }
    end
  end

  # GET /dispatched_emails/new
  # GET /dispatched_emails/new.json
  def new
    @dispatched_email = DispatchedEmail.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dispatched_email }
    end
  end

  # GET /dispatched_emails/1/edit
  def edit
    @dispatched_email = DispatchedEmail.find(params[:id])
  end

  # POST /dispatched_emails
  # POST /dispatched_emails.json
  def create
    @dispatched_email = DispatchedEmail.new(params[:dispatched_email])

    respond_to do |format|
      if @dispatched_email.save
        format.html { redirect_to @dispatched_email, notice: 'Dispatched email was successfully created.' }
        format.json { render json: @dispatched_email, status: :created, location: @dispatched_email }
      else
        format.html { render action: "new" }
        format.json { render json: @dispatched_email.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dispatched_emails/1
  # PUT /dispatched_emails/1.json
  def update
    @dispatched_email = DispatchedEmail.find(params[:id])

    respond_to do |format|
      if @dispatched_email.update_attributes(params[:dispatched_email])
        format.html { redirect_to @dispatched_email, notice: 'Dispatched email was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @dispatched_email.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dispatched_emails/1
  # DELETE /dispatched_emails/1.json
  def destroy
    @dispatched_email = DispatchedEmail.find(params[:id])
    @dispatched_email.destroy

    respond_to do |format|
      format.html { redirect_to dispatched_emails_url }
      format.json { head :no_content }
    end
  end
end
