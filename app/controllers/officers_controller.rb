class OfficersController < ApplicationController

  def index
    @officers = Officer.all
  end

  def create
    @officer = Officer.new(officer_params)
    if @officer.save
      redirect_to @officer
    else
      render 'new'
    end
  end

  def new
    @officer = Officer.new
  end

  def edit
    @officer = Officer.find(params[:id])
  end

  def show
    @officer = Officer.find(params[:id])
  end

  def update
    @officer = Officer.find(params[:id])

    if @officer.update(params[:officer].permit(:name, :position, :img_url))
      redirect_to @officer
    else
      render 'edit'
    end
  end

  def destroy
    @officer = Officer.find(params[:id])
    @officer.destroy

    redirect_to officers_path
  end

  private
    def officer_params
      params.require(:officer).permit(:name, :position, :img_url)
    end

end
