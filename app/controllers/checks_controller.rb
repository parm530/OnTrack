class ChecksController < ApplicationController

  def index
    @events = Event.all.select{|event| event.start_time.strftime("%d") == Time.now.strftime("%d")}
    @check = Check.new
  end

 def create
   @num_arr = params[:check][:id][1..-1]
   @num_arr.each do |event_id|
     binding.pry
     event = Event.find_by(id: event_id.to_i)
     event.status = true
     event.save
   end
 end


end
