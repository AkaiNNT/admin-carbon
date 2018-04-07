class Admin::SchoolsController < Admin::BaseController
  before_action :set_school, only: [:show, :edit, :update, :destroy]
  def index
    respond_to do |format|
      format.html
      format.json { render json: SchoolDatatable.new(view_context) }
    end
  end

  def new
  	@school = School.new
  end

  def create
  	@school = School.new(section_params)
  	if @school.save
      flash[:susses] = "School was successfully created!"
      redirect_to admin_schools_path
    else
      render :new
    end
  end

  def edit; end

  def update
  	if @school.update(section_params)
      flash[:susses] = "School was successfully updated!"
      redirect_to admin_schools_path
    else
      render :edit
    end
  end

  def destroy
  	if @school.destroy
      flash[:susses] = "School was successfully deleted!"
      redirect_to admin_schools_path
    else
    	flash[:errors] = "Fail to delete section!"
      redirect_to admin_schools_path
    end
  	
  end

  private
  def set_school
  	@school = School.find(params[:id])
  end

  def section_params
  	params.require(:school).permit(:name, :number_student)
  end
end
