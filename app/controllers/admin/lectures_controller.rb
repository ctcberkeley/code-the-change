class Admin::LecturesController < ApplicationController

  def create
    @lesson = Lesson.find(params[:lesson_id])
    @lecture = @lesson.lectures.create(params[:lecture].permit(:title, :url))
    redirect_to admin_lesson_path(@lesson)
  end

  def destroy
    @lesson = Lesson.find(params[:lesson_id])
    @lecture = @lesson.lectures.find(params[:id])
    @lecture.destroy
    redirect_to admin_lesson_path(@lesson)
  end

end
