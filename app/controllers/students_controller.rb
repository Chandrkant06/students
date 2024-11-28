class StudentsController < ApplicationController

  before_action :set_student, only: %i[show edit update destroy]

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    #   first_name: params[:student][:first_name],
    #   last_name: params[:student][:last_name],
    #   email: params[:student][:email]
    # )
    if @student.save
      redirect_to students_path, notice: 'Student has been created sucessfully'
    else
       render :new, status: :unprocessable_entity
    end
  end


  #This will show the details of student


  def show
    # @student = Student.find(params[:id])
  end

  # This will edit the deatils of student

  def edit
    # @student = Student.find(params[:id])
  end

  #This will update the details of student

  def update
    # @student = Student.find(params[:id])
    if @student.update(student_params)
      redirect_to student_path(@student),notice: 'Student has been updated sucessfully'

    else
      render :edit, status: :unprocessable_entity
    end
  end

  #This will delete the data of student

  def destroy
    # @student = Student.find(params[:id])
    @student.destroy
    redirect_to student_path, notice: 'Student has been deleted sucessfully'
  end


  private 

  def student_params
    params.require(:student).permit(:first_name, :last_name, :email, :email_confirmation, :date_of_birth, :contact, :address)
  end

  def set_student
    @student = Student.find(params[:id])
    
  end

end
