class JobsController < ApplicationController
	 # GET /jobs
  # GET /jobs.json
  def index
    @jobs = Job.all
  end
  def show
  	@job = Job.find(params[:id])
  end
end