class Akira::SitesController < ApplicationController
  layout 'akira'
	def new
    @site = Site.new
  end
  # GET /sites/1/edit
  def edit
    session[:user_params] ||={}
    @user = current_user
    @user[:step] = "first"
  end

  def update
    role = current_user._type
    session[:user_params].deep_merge!(params[:model])if params[:model]
    @user = User.find(params[:user_id])
    @site = @user.site
    @site.current_step = session[:step]
    if params[:previous_button]
      @site.previous_step
    else
      @site.next_step
      @user.update_attributes!(params[:model])
    end

    if @site.last_step?
      session[:step] = nil
      redirect_to akira_user_site_path(@user, @site)
    else
    render 'edit'
    session[:step] = @site.current_step
    end
  end


  # DELETE /sites/1
  # DELETE /sites/1.json
  def destroy
    @site = Site.find(params[:id])
    @site.destroy

    respond_to do |format|
      format.html { redirect_to sites_url }
      format.json { head :no_content }
    end
  end
end