class WelcomeController < ApplicationController
  def home

    @user = current_user
    @events = Event.all
    @quote = Quote.all.sample
    @wallpaper = Wallpaper.all.sample
    @event = Event.new
  end

  def dashboard
    events = current_user.events.where('status = ?', true)
    @events = events.where('start_time <= ?', Time.now)
   end
end
