class UsersController < ApplicationController
  
  def dashboard
    @user = current_user
      if @user.site
        @site = @user.site
      else
        @user.site = Site.new
      end
      render layout: "akira"
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
