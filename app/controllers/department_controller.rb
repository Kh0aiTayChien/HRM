class DepartmentController < ApplicationController
  def list
    @dpms = Department.all
  end

  def show
    @dpm = Department.find(params[:id])
  end

  def new
    @dpm = Department.new
  end

  def create
    @dpm = Department.new(dpm_params)
    respond_to do |format|
      if @dpm.save
        format.html { redirect_to :action => 'list', notice: "User was successfully created." }
        # redirect_to :action => 'list'
      else
        render :action => 'new'
      end
    end
  end

  def dpm_params
    params.require(:departments).permit(:name, :description)
  end

  def edit
    @dpm = Department.find(params[:id])
  end

  def dpm_param
    params.require(:department).permit(:name, :description)
  end

  def update
    @dpm = Department.find(params[:id])
    if @dpm.update(dpm_param)
      redirect_to :action => 'list'
    else
      render :action => 'edit'
    end
  end

  def delete
    Department.find(params[:id]).destroy
    redirect_to :action => 'list'
  end

end
