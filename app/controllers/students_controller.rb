class StudentsController < ApplicationController
  def index
    @students = Student.all
  end
  
  def new
    @student = Student.new
  end

  def create
    new_student = Student.create(student_params)
    redirect_to student_path(new_student)
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    updated_student = Student.update(params[:id], student_params)
    redirect_to student_path(updated_student)
  end

  private

  def student_params
    params.require(:student).permit(:first_name,:last_name)
  end
end
