class WelcomeController < ApplicationController
  def home
    @events = Event.all
    @quote = Quote.all.sample
    @wallpaper = Wallpaper.all.sample
  end
end
