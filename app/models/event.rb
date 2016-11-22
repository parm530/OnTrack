class Event < ApplicationRecord
  @@pending = []
  
  def remind?
    if self.start_time.strftime("%Y %m %d %H") == Time.now.strftime("%Y %m %d %H")
      if self.start_time.min - Time.now.min <= 30
        return true
        true
      end
    end
    return false
  end

  def self.send_sms(event, val = client)
    if remind?
      val.account.messages.create(
        from: "+13474175794",
        to: '+17182005194',
        body: "Reminder, you have an event: #{event.description} in 30 min!"
      )
    end
  end

end
 