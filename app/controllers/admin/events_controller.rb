class Admin::EventsController < ApplicationController

  before_filter :authenticate

  def index
    @events = Event.all
  end

  def create
    @event = Event.new(event_params)

    if @event.save
      redirect_to admin_events_path
    else
      render 'new'
    end
  end

  def new
    @event = Event.new
  end

  def edit
    @event = Event.find(params[:id])
  end

  def show
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])

    if @event.update(params[:event].permit(:title, :start_time, :end_time, :location, :description, :url))
      redirect_to admin_events_path
    else
      render 'edit'
    end
  end

  def destroy
    @event = Event.find(params[:id])
    
    @event.destroy
    redirect_to admin_events_path
  end

  private
    def event_params
      params.require(:event).permit(:title, :start_time, :end_time, :location, :description, :url)
    end

end
