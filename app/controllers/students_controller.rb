class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
  end

  def activate
    set_student
#     if @student.active == false
#       @student.active = true
#       @student.save
#     else
#       @student.active = false
#       @student.save
#     end
    @student.active = !@student.active
    @student.save
    redirect_to @student
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
