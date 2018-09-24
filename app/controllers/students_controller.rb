class StudentsController < ApplicationController
  before_action :set_default, only: [:show, :update, :edit, :destroy]
  def index
    @students = Student.all
  end

  def show
  end

  def new
    @student = Student.new
  end

  def create
    # binding.pry
    @student = Student.create(params[:student])
    redirect_to student_path(@student)
  end

  def edit
  end

  def update
    @student.update(params[:student])
    redirect_to student_path(@student)
  end

  def destroy
  end

  private

  def set_default
    @student = Student.find(params[:id])
  end

  def student_params

  end
end
