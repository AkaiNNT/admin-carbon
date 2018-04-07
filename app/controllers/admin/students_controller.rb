class Admin::StudentsController < Admin::BaseController
  before_action :set_student, only: [:show, :edit, :update, :destroy]
  def index
  	# @students = Section.all
    respond_to do |format|
      format.html
      format.json { render json: StudentDatatable.new(view_context) }
    end
  end

  def show
  	@questions = @student.questions
  end

  def new
  	@student = Student.new
  end

  def create
  	@student = Student.new(student_params)
  	if @student.save
      flash[:susses] = "Student was successfully created!"
      redirect_to admin_students_path
    else
      render :new
    end
  end

  def edit; end

  def update
  	if @student.update(student_params)
      flash[:susses] = "Student was successfully updated!"
      redirect_to admin_students_path
    else
      render :edit
    end
  end

  def destroy
  	if @student.destroy
      flash[:susses] = "Student was successfully deleted!"
      redirect_to admin_students_path
    else
    	flash[:errors] = "Fail to delete section!"
      redirect_to admin_students_path
    end
  	
  end

  private
  def set_student
  	@student = Student.find(params[:id])
  end

  def student_params
  	params.require(:section).permit(:title, questions_attributes: [:id, :title, :question_type, :_destroy , options_attributes: [:id, :detail, :_destroy]])
  end
end
