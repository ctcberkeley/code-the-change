class Admin::AssignmentsController < ApplicationController
  
  def create
    @lesson = Lesson.find(params[:lesson_id])
    @assignment = @lesson.assignments.create(params[:assignment].permit(:title, :due, :description))
    redirect_to admin_lesson_path(@lesson)
  end

  def destroy
    @lesson = Lesson.find(params[:lesson_id])
    @assignment = @lesson.assignments.find(params[:id])
    @assignment.destroy
    redirect_to admin_lesson_path(@lesson)
  end

  def show
    @lesson = Lesson.find(params[:lesson_id])
    @assignment = @lesson.assignments.find(params[:id])
  end
  
end
