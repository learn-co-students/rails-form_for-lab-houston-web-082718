class SchoolClassesController < ApplicationController
		before_action :set_default, only: [:show, :update, :edit, :destroy]

		def index
			@school_classes = SchoolClass.all
		end

		def new
			@school_class = SchoolClass.new
		end

		def create
			@school_class = SchoolClass.create(params[:school_class])
			# binding.pry
			redirect_to school_class_path(@school_class)
		end

		def show
		end

		def edit
		end

		def update
			@school_class.update(params[:school_class])
			redirect_to school_class_path(@school_class)
		end

		def destroy
			@school_class.destroy
			redirect_to school_classes_path
		end


		private

		def set_default
			@school_class = SchoolClass.find(params[:id])
		end

end
