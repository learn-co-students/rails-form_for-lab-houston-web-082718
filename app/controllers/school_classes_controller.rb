class SchoolClassesController < ApplicationController
  def new
    @school_class = SchoolClass.new
  end

  def index
    @school_classes = SchoolClass.all
  end

  def create
    new_class = SchoolClass.create(school_classes_params)
    redirect_to school_class_path(new_class)
  end

  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def update
    update_class = SchoolClass.update(params[:id], school_classes_params)
    redirect_to school_class_path(update_class)    
  end

  private

  def school_classes_params
    params.require(:school_class).permit(:title, :room_number)
  end

end
