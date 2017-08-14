class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
    @newstu = Student.new
    @newstu.last_name = params[:last_name]
    @newstu.first_name = params[:first_name]
    @newstu.save
    redirect_to student_path(@newstu)
  end

end
