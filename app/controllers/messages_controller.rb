class MessagesController < ApplicationController
 skip_before_filter :verify_authenticity_token, :authenticate_user!
 before_action :boot_twilio

  def reply
    message_body = params["Body"]
    from_number = params["From"]
    sms = @client.messages.create(
      from: "+13474175794",
      to: from_number,
      body: "Hello there, thanks for texting me. Your number is #{from_number}."
    ) 
  end

  def send
    @event = Event.find_by(id: params[:event_id])
    Event.send_sms(@event, @client)
    # @client.account.messages.create(
    #   from: "+13474175794",
    #   to: '+17182005194',
    #   body: "Reminder, you have an event: #{@event.description} in 30 min!"
    # ) 
     redirect_to root_path, alert: 'Event was successfully created.'
  end
 
  private
 
  def boot_twilio
    account_sid = 'ACb81a290e1ff16bee1b0f52a72b0991ef'
    auth_token = '7f54bf3a2172c2273c897db66e9cb2e5'
    @client = Twilio::REST::Client.new account_sid, auth_token
  end
end
