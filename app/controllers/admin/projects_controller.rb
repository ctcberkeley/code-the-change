class Admin::ProjectsController < ApplicationController

  before_filter :authenticate

  def index
    @projects = Project.all
  end

  def create
    @project = Project.new(project_params)

    if @project.save
      redirect_to admin_projects_path
    else
      render 'new'
    end
  end

  def new
    @project = Project.new
  end

  def edit
    @project = Project.find(params[:id])
  end

  def show
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])

    if @project.update(params[:project].permit(:organization, :description, :url, :term_id))
      redirect_to admin_projects_path
    else
      render 'edit'
    end
  end

  def destroy
    @project = Project.find(params[:id])
    
    @project.destroy
    redirect_to admin_projects_path
  end

  private
    def project_params
      params.require(:project).permit(:organization, :description, :url, :term_id)
    end

end
