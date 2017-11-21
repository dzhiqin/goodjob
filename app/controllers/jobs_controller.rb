class JobsController < ApplicationController
  def index
    @jobs=Job.where(:is_hidden=> false)
  end
  def show
    @job=Job.find(params[:id])
  end
end
