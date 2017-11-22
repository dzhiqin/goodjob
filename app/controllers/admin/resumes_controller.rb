class Admin::ResumesController < ApplicationController
  def index
    @job=Job.find(params[:job_id])
    @resumes=@job.resumes.order("created_at DESC")
  end
  def show
    @job=Job.find(params[:job_id])
    @resume=Resume.find(params[:id])
  end
  def destroy
    @job=Job.find(params[:job_id])
    @resume=Resume.find(params[:id])
    @resume.destroy
    redirect_to admin_job_resumes_path
  end
end
