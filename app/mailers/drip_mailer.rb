class DripMailer < ActionMailer::Base
  default from: "from@example.com"
  
  def send_email(dispatched_email)
    @customer = dispatched_email.dispatched_drip.customer
    @email = dispatched_email.email
    @subject = @email.subject
    @body = @email.body
    if (dispatched_email.dispatched_drip.drip_id==2)
      @url  = "www.custora.com/customer/demo?id=#{@customer.id}"
    elsif (dispatched_email.dispatched_drip.drip_id==3)
      @url  = "www.custora.com/customer/signup?id=#{@customer.id}"
    end
    mail(:to => @customer.email, :subject => @subject)
  end
  
end
