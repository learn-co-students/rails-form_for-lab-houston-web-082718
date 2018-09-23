class StudentsController < ApplicationController
  # displays individuls student details
    def show
      @student = Student.find(params[:id])
    end

  # displays new student form
    def new
      @student = Student.new
    end

  # renders new student form
    def create
      @student = Student.new(post_params)
      @student.save
      redirect_to student_path(@student)
    end

  # displays edit student form
    def edit
      @student = Student.find(params[:id])
    end

  # renders edit student form
    def update
      @student = Student.find(params[:id])
      @student.update(post_params)
      redirect_to student_path(@student)
    end

  private

  def post_params
    params.require(:student)
  end
end
