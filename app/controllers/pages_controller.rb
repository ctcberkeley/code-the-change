class PagesController < ApplicationController

  def home
    @events = Event.all
    @events.sort! { |a,b| b.start <=> a.start }
    @upcoming_events = []
    @past_events = []
    time = Time.now

    @events.each do |event|
      if event.end_time > time
        @upcoming_events.push(event)
      else
        @past_events.push(event)
      end
    end
  end

  def about
    @officers = Officer.all
    @project_managers = []

    @officers.each do |officer|
      if officer.position == 'President'
        @president = officer
      elsif officer.position == 'VP of Operations'
        @vp_of_operations = officer
      elsif officer.position == 'VP of Training & Development'
        @vp_of_training_and_development = officer
      elsif officer.position == 'VP of Marketing & Finance'
        @vp_of_marketing_and_finance = officer
      else
        @project_managers.push(officer)
      end
    end
  end

  def projects
    @terms = Term.all
    @terms.sort! { |a,b| (a.year == b.year) ? a.season <=> b.season : b.year <=> a.year }
  end

end
