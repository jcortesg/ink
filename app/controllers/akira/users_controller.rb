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
  
end