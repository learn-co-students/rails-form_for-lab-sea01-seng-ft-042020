class StudentsController < ApplicationController
    before_action :set_student, only: [:show, :edit, :update]
    def index 
        @students = Student.all
    end

    def show
    end

    def new
        @student = Student.new
    end

    def create
        @student = Student.create(params.require(:student).permit(:first_name, :last_name))
        redirect_to @student
    end

    def edit
    end

    def update
        @student = Student.update(params.require(:student).permit(:first_name, :last_name))
        redirect_to @student
    end

    private

    def set_student
        @student = Student.find(params[:id])
    end
end