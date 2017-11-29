class Admin::JobsController < ApplicationController
  before_action :authenticate_user!
  before_action :require_admin

  def index
    @jobs=Job.all
  end
  def new
    @job=Job.new
  end
  def edit
    @job=Job.find(params[:id])
  end
  def show
    @job=Job.find(params[:id])
  end
  def create
    @job=Job.new(job_params)
    if @job.save
      redirect_to admin_jobs_path
    else
      render :new
    end
  end
  def update
    @job=Job.find(params[:id])
    if @job.update(job_params)
      redirect_to admin_jobs_path
    else
      render :edit
    end
  end
  def destroy
    @job=Job.find(params[:id])
    @job.destroy
    redirect_to admin_jobs_path
  end
  def publish
    @job=Job.find(params[:id])
    @job.is_hidden=false
    @job.save!
    redirect_to admin_jobs_path
  end
  def hide
    @job=Job.find(params[:id])
    @job.is_hidden=true
    @job.save!
    redirect_to admin_jobs_path
  end
  private
  def job_params
    params.require(:job).permit(:title,:description,:wage_lower_bound,:wage_upper_bound,:contact_email,:official_website,:company_name,:company_address,:skill_requirement,:remuneration,:work_location,:number_of_hiring,:is_hidden,:logo,:slogan)
  end

end
