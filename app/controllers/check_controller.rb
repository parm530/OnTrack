class CheckController < ApplicationController

  def index
    @events = Event.all.select{|event| event.start_time.strftime("%d") == Time.now.strftime("%d")}
  end
end
