class Akira::JobsController < ApplicationController
	  # GET /jobs/new
  # GET /jobs/new.json
  layout 'akira'
  def new
    @job = Job.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @job }
    end
  end

  def index
    @jobs = current_user.jobs
  end
  # GET /jobs/1/edit
  def edit
    @job = Job.find(params[:id])
  end

  # POST /jobs
  # POST /jobs.json
  def create
    @job = Job.new(params[:job])
    @user = current_user
    respond_to do |format|
      if @user.jobs << @job
        format.html { redirect_to akira_user_job_path(current_user , @job), notice: 'Job was successfully created.' }
        format.json { render json: @job, status: :created, location: @job }
      else
        format.html { render action: "new" }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end
  def update
    @job = Job.find(params[:id])
    respond_to do |format|
      if @job.update_attributes(params[:job])
        format.html { redirect_to akira_user_job_path(current_user , @job), notice: 'Job was successfully created.' }
        format.json { render json: @job, status: :created, location: @job }
      else
        format.html { render action: "new" }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end
  def show
    @job = Job.find(params[:id])
  end
end