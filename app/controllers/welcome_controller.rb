class WelcomeController < ApplicationController
  def home
    @events = Event.all
  end
end
