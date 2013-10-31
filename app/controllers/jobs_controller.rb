class JobsController < ApplicationController
	 # GET /jobs
  # GET /jobs.json
  def index
    @jobs = Job.all
    @tags = Tag.all
  end
  def show
  	@job = Job.find(params[:id])
  	if current_user
  		@apply = @job.users.find(current_user)
  	else
  		@apply = nil
  	end
  end

   def update
  	user = current_user
  	job = Job.find(params[:id])
  	job.users << user
  	redirect_to home_job_path(job)
  end

end