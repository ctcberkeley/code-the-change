class PagesController < ApplicationController

  def home
    @events = Event.all
    @upcoming_events = []
    @past_events = []
    time = Time.now

    @events.each do |event|
      if event.end > time
        @upcoming_events.push(event)
      else
        @past_events.push(event)
      end
    end
  end

  def about
  end

  def projects
  end

end
