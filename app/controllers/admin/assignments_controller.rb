class Admin::AssignmentsController < ApplicationController
  
  before_filter :authenticate

  def index
    @assignments = Assignment.all
  end

  def create
    @assignment = Assignment.new(assignment_params)

    if @assignment.save
      redirect_to admin_assignments_path
    else
      render 'new'
    end
  end

  def new
    @assignment = Assignment.new
  end

  def edit
    @assignment = Assignment.find(params[:id])
  end

  def show
    @assignment = Assignment.find(params[:id])
  end

  def update
    @assignment = Assignment.find(params[:id])

    if @assignment.update(params[:assignment].permit(:title, :url))
      redirect_to admin_assignments_path
    else
      render 'edit'
    end
  end

  def destroy
    @assignment = Assignment.find(params[:id])
    
    @assignment.destroy
    redirect_to admin_assignments_path
  end

  private
    def assignment_params
      params.require(:assignment).permit(:title, :url)
    end
  
end
