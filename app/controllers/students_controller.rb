class StudentsController < ApplicationController

  def index
    students = if params[:name]
                  Student.find_by(params[:name])
                else
                  Student.all
                end
    render json: students
  end

  def show
    students = Student.find(params[:id])
    render json: students
  end

end
