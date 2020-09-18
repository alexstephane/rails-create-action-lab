class StudentsController < ApplicationController
  
  def index
    @students = Student.all
    #byebug
  end

  def show
    @student = Student.find(params[:id])
    #byebug
  end

  # def new
  #   @student= Student.new
   
  # end

  def create
    @student= Student.new
    @student.first_name=params[:first_name]
    @student.last_name=params[:last_name]
    @student.save

    redirect_to student_path(@student)
    

  end

end
