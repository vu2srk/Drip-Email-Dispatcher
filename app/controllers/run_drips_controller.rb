class RunDripsController < ApplicationController
  # GET /run_drips
  # GET /run_drips.json
  
  def runDrip
    customers = Customer.all
    
    connection = ActiveRecord::Base.connection()
    
    results = ""
    nextDispatch = nil
    
    customers.each do |customer|
      @dispatched_drip = customer.dispatched_drips.find(:all,:conditions=>['drip_id = ?',customer.drip_id]).first
      latestEmail = @dispatched_drip.dispatched_emails.first(:conditions => {:sent_date => @dispatched_drip.dispatched_emails.maximum(:sent_date)})
      emailObj = Email.find(latestEmail.email_id)
      nextDispatch = Email.find(:all, :conditions => ['drip_id = ? and sequence = ?',emailObj.drip_id, emailObj.sequence + 1]).first
      #latestEmail = connection.execute("select * from dispatched_emails where customer_id="+customer.id.to_s+" and sent_date = (select max(sent_date) from dispatched_emails where customer_id="+customer.id.to_s+" and drip_id="+customer.drip_id.to_s+" group by customer_id)")
      #nextDispatch = connection.execute("select * from emails where sequence = (select sequence+1 from emails where drip_id="+customer.drip_id.to_s+" and id="+latestEmail[0]["email_id"].to_s+")")
      if (nextDispatch!=nil)
        interval = nextDispatch.interval
        today = Date.today
        lastDispatch = latestEmail.sent_date
        if ((lastDispatch + interval) == today)
          @dispatched_drip.send_next_email(nextDispatch.id)
          results += "User: "+customer.name+" Dispatched email "+ nextDispatch.id.to_s + "."
        else
          results += "User: "+customer.name+" Email not sent. Next dispatch is only on: "+(lastDispatch + interval).to_s + "."
        end
      else
        results += "User: "+customer.name+"Drip is complete"
      end
    end
    respond_to do |format|
      format.json { render :json => results.to_json, :status => :ok }
    end
  end
  
  def index
    #@run_drips = RunDrip.all

    respond_to do |format|
      format.html # index.html.erb
      #format.json { render json: @run_drips }
    end
  end

  # GET /run_drips/1
  # GET /run_drips/1.json
  def show
    #@run_drip = RunDrip.find(params[:id])

    #respond_to do |format|
      #format.html # show.html.erb
      #format.json { render json: @run_drip }
    #end
  end

  # GET /run_drips/new
  # GET /run_drips/new.json
  def new
    @run_drip = RunDrip.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @run_drip }
    end
  end

  # GET /run_drips/1/edit
  def edit
    @run_drip = RunDrip.find(params[:id])
  end

  # POST /run_drips
  # POST /run_drips.json
  def create
    @run_drip = RunDrip.new(params[:run_drip])

    respond_to do |format|
      if @run_drip.save
        format.html { redirect_to @run_drip, notice: 'Run drip was successfully created.' }
        format.json { render json: @run_drip, status: :created, location: @run_drip }
      else
        format.html { render action: "new" }
        format.json { render json: @run_drip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /run_drips/1
  # PUT /run_drips/1.json
  def update
    @run_drip = RunDrip.find(params[:id])

    respond_to do |format|
      if @run_drip.update_attributes(params[:run_drip])
        format.html { redirect_to @run_drip, notice: 'Run drip was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @run_drip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /run_drips/1
  # DELETE /run_drips/1.json
  def destroy
    @run_drip = RunDrip.find(params[:id])
    @run_drip.destroy

    respond_to do |format|
      format.html { redirect_to run_drips_url }
      format.json { head :no_content }
    end
  end
end
