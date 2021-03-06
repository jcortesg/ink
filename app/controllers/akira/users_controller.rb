class Akira::UsersController < ApplicationController
  layout 'akira'
  
  def index
    @users = User.all
  end

  def show
    begin
      @user = User.find_by(subdomain: request.subdomain)
    rescue Exception => e
      logger.warn "Unable to foo, will ignore: #{e}"
      redirect_to new_user_registration_path
      render layout: 'site'
    end
  end


  def dashboard
    @user = current_user
  end


  def create
    respond_to do |format|
    	if @user = User.new(params)
        format.html { redirect_to redirect_register_users_path , notice: '#{@user._type} was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { redirect_to @user, notice: 'Model was successfully updated.' }
        format.json { head :no_content }
      end
    end
  end

  def edit
    
  end


  def check
    @user = User.find(params[:user_id])

    respond_to do |format|
      if @user.update_attributes!(params[:model])
        format.html { redirect_to root_path, notice: 'Model was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @model.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    @model = User.find(params[:id])

    respond_to do |format|
      if @model.update_attributes!(params[:user])
        format.html { redirect_to root_path, notice: 'Model was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { redirect_to root_path, notice: 'Model was successfully updated.' }
        format.json { render json: @model.errors, status: :unprocessable_entity }
      end
    end
  end
  
end