class SchoolClassesController < ApplicationController

  # displays individuls student details
    def show
      @class = SchoolClass.find(params[:id])
    end

  # displays new student form
    def new
      @class = SchoolClass.new
    end

  # renders new student form
    def create
      @class = SchoolClass.new(post_params)
      @class.save
      redirect_to school_class_path(@class)
    end

  # displays edit student form
    def edit
      @class = SchoolClass.find(params[:id])\
    end

  # renders edit student form
    def update
      @class = SchoolClass.find(params[:id])
      @class.update(post_params)
      redirect_to school_class_path(@class)
    end

  private

  def post_params
    params.require(:school_class)
  end

end
