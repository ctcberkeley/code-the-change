class SponsorsController < ApplicationController
  before_filter :authenticate_admin!

  def index
    @sponsors = Sponsor.all
  end

  def update
    @sponsor = Sponsor.find(params[:id])

    if @sponsor.update(params[:event].permit(:title, :start_time, :end_time, :location, :description, :url))
      redirect_to admin_events_path
    else
      render 'edit'
    end
  end

  def create
    @sponsor = Sponsor.new(event_params)

    if @sponsor.save
      redirect_to admin_events_path
    else
      render 'new'
    end
  end

  def new
    @sponsor = Sponsor.new
  end

  def edit
    @sponsor = Sponsor.find(params[:id])
  end

  def show
    @sponsor = Sponsor.find(params[:id])
  end

  def destroy
    @sponsor = Sponsor.find(params[:id])
    
    @sponsor.destroy
    redirect_to admin_events_path
  end

  private
    def event_params
      params.require(:sponsor).permit(:name, :company, :package_pref, :email, :message, :url)
    end

        
end
