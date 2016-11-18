class Event < ApplicationRecord

  def remind?
    if self.start_time.strftime("%Y %m %d %H") == Time.now.strftime("%Y %m %d %H")
      if self.start_time.min - Time.now.min == 15
        true
      end
    end
  end

end
