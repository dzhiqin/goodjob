class Admin::ResumesController < ApplicationController
  before_action :authenticate_user!
  before_action :require_admin
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
  def bulk_update
    total=0
    Array(params[:ids]).each do |resume_id|
      resume=Resume.find(resume_id)
      resume.destroy
      total+=1
    end
    flash[:alert]="成功删除#{total}份简历"
    redirect_to admin_job_resumes_path
  end
end
