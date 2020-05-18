class StudentsController < ApplicationController
    def new
        @student = Student.new
    end
	def create
		@student = Student.new(student_params(:first_name, :last_name))
		@student.save
		redirect_to @student
    end
    def show
        @student = Student.all.find(params[:id])
    end
    def index
        @students = Student.all
    end
    def update
		@student = Student.find(params[:id])
		@student.update(student_params(:first_name, :last_name))
		redirect_to @student
    end

    def edit
		@student = Student.find(params[:id])
	end
	  
    private
    
    def student_params(*args)
        # byebug
        params.require(:student).permit(*args)
    end
end