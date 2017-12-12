class JobsController < ApplicationController
  before_action :authenticate_user!,only:[:apply]
  def index
    @jobs=Job.where(:is_hidden=> false).recent.paginate(:page=>params[:page],:per_page=>20)
  end
  def show
    @job=Job.find(params[:id])
  end
  def apply
    @job=Job.find(params[:id])
    @resume=Resume.create!(user_id:current_user.id,job_id:@job.id)
    redirect_to job_path(@job)
  end
end
